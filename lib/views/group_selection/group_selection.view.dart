import 'package:borrow_app/common/mixins/form_validator.mixin.dart';
import 'package:borrow_app/common/providers.dart';
import 'package:borrow_app/services/routing/routes.dart';
import 'package:borrow_app/views/group_selection/group_selection.model.dart';
import 'package:borrow_app/widgets/cards/group_selection_card.widget.dart';
import 'package:borrow_app/widgets/dialogs/create_group_dialog.dart';
import 'package:borrow_app/widgets/dialogs/invitation_dialog.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class GroupSelectionView extends ConsumerStatefulWidget {
  const GroupSelectionView({super.key});

  @override
  ConsumerState<GroupSelectionView> createState() {
    return _GroupSelectionViewState();
  }
}

class _GroupSelectionViewState extends ConsumerState<GroupSelectionView> {
  final _carouselController = CarouselController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final controller = ref.read(
      providers.groupSelectionControllerProvider.notifier,
    );
    final model = ref.watch(providers.groupSelectionControllerProvider);

    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).myGroups),
        actions: [
          if (!isPortrait)
            Row(
              children: [
                TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  onPressed: () async {
                    final bool confirmed = await _showAlertDialog() ?? false;
                    controller.addGroup(confirmed: confirmed);
                  },
                  child: Text(AppLocalizations.of(context).newGroup),
                ),
                const SizedBox(width: 20),
              ],
            )
        ],
      ),
      body: model.isLoading
          ? const Center(child: CircularProgressIndicator())
          : model.hasError
              ? Center(
                  child: Text(AppLocalizations.of(context).unspecifiedError),
                )
              : model.user.fold(
                  () => Center(
                    child: Text(AppLocalizations.of(context).unspecifiedError),
                  ),
                  (user) => SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(height: isPortrait ? 70 : 10),
                        if (user.groups.isNotEmpty)
                          CarouselSlider.builder(
                            carouselController: _carouselController,
                            options: CarouselOptions(
                              enableInfiniteScroll: user.groups.length > 1,
                              viewportFraction: isPortrait ? .75 : .5,
                              height: !isPortrait
                                  ? MediaQuery.of(context).size.height * 0.8
                                  : 400,
                              enlargeCenterPage: true,
                              onPageChanged: (val, _) {
                                setState(() => _currentIndex = val);
                                _carouselController.animateToPage(val);
                              },
                            ),
                            itemCount: user.groups.length,
                            itemBuilder: (context, index, pageViewIndex) {
                              final group = user.groups.elementAt(index);
                              return GroupSelectionCard(
                                groupName: group.name,
                                groupDescription: group.description,
                                groupImage: group.imageUrl,
                                onTap: () {
                                  context.goNamed(
                                    groupRoute.name,
                                    pathParameters: {"groupId": group.id!},
                                  );
                                },
                                onTapInviteButton: () async {
                                  controller.setupMemberInvitation(
                                    groupId: group.id!,
                                  );
                                  final bool? result = await showDialog(
                                    context: context,
                                    builder: (context) => InviteMembersDialog(
                                      groupId: group.id!,
                                      groupName: group.name,
                                    ),
                                  );
                                  controller.inviteGroupMembers(
                                    confirmed: result ?? false,
                                  );
                                },
                                inviteButtonHidden: index != _currentIndex,
                              );
                            },
                          ),
                        if (isPortrait)
                          IntrinsicWidth(
                            child: Column(
                              children: <Widget>[
                                const SizedBox(height: 20),
                                if (user.groups.isNotEmpty)
                                  Center(
                                    child: CarouselIndicator(
                                      animationDuration: 0,
                                      space: 15,
                                      height: 8,
                                      width: 8,
                                      activeColor: Colors.black,
                                      color: Colors.black26,
                                      count: user.groups.length,
                                      index: _currentIndex,
                                    ),
                                  ),
                                const SizedBox(height: 40),
                                ElevatedButton(
                                  onPressed: () async {
                                    final bool confirmed =
                                        await _showAlertDialog() ?? false;
                                    controller.addGroup(confirmed: confirmed);
                                  },
                                  child: Text(
                                    AppLocalizations.of(context).newGroup,
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
    );
  }

  Future<bool?> _showAlertDialog() async {
    final GroupSelectionController controller =
        ref.read(providers.groupSelectionControllerProvider.notifier);
    controller.createNewGroup();
    return showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return CreateGroupDialog(
          nameValidator: (value) => controller.validateFormField(
            fieldName: "groupName",
            context: context,
            value: value,
          ),
          onGroupNameChanged: controller.setNewGroupName,
          onGroupDescriptionChanged: controller.setNewGroupDescription,
          onImageChanged: controller.setGroupImage,
        );
      },
    );
  }
}

abstract class GroupSelectionController
    extends StateNotifier<GroupSelectionModel> with FormValidator {
  GroupSelectionController(super.model);

  void addGroup({required bool confirmed});

  void createNewGroup();

  void setNewGroupName(String value);

  void setNewGroupDescription(String value);

  void setGroupImage(XFile? file);

  void setupMemberInvitation({required String groupId});

  String? validateAndAddEmailToInvitations(String? email);

  void removeMailFromInvitations(String email);

  void inviteGroupMembers({required bool confirmed});
}
