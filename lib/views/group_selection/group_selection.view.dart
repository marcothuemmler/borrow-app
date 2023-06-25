import "package:borrow_app/common/enums/form_validation_type.enum.dart";
import "package:borrow_app/common/mixins/form_validator.mixin.dart";
import "package:borrow_app/common/providers.dart";
import "package:borrow_app/services/routing/routes.dart";
import "package:borrow_app/views/group_selection/group_selection.model.dart";
import "package:borrow_app/widgets/cards/group_selection_card.widget.dart";
import "package:borrow_app/widgets/dialogs/create_group_dialog.dart";
import "package:borrow_app/widgets/dialogs/invitation_dialog.dart";
import "package:borrow_app/widgets/menus/app_menu.widget.dart";
import "package:carousel_indicator/carousel_indicator.dart";
import "package:carousel_slider/carousel_slider.dart";
import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:go_router/go_router.dart";
import "package:image_picker/image_picker.dart";

class GroupSelectionView extends ConsumerStatefulWidget {
  const GroupSelectionView({super.key});

  @override
  ConsumerState<GroupSelectionView> createState() {
    return _GroupSelectionViewState();
  }
}

class _GroupSelectionViewState extends ConsumerState<GroupSelectionView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final GroupSelectionController controller = ref.read(
      providers.groupSelectionControllerProvider.notifier,
    );
    final GroupSelectionModel model = ref.watch(
      providers.groupSelectionControllerProvider,
    );
    final bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).myGroups),
        actions: <Widget>[
          if (!isPortrait)
            Row(
              children: <Widget>[
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
            ),
          const AppMenu(),
        ],
      ),
      body: model.isLoading
          ? const Center(child: CircularProgressIndicator())
          : model.hasError || model.user is! GroupSelectionUserModel
              ? Center(
                  child: Text(AppLocalizations.of(context).unspecifiedError),
                )
              : SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(height: isPortrait ? 70 : 10),
                      if (model.user!.groups.isNotEmpty)
                        CarouselSlider.builder(
                          options: CarouselOptions(
                            enableInfiniteScroll: model.user!.groups.length > 1,
                            viewportFraction: isPortrait ? .75 : .5,
                            height: !isPortrait
                                ? MediaQuery.of(context).size.height * 0.8
                                : 400,
                            enlargeCenterPage: true,
                            onPageChanged: (int val, _) {
                              setState(() => _currentIndex = val);
                            },
                          ),
                          itemCount: model.user!.groups.length,
                          itemBuilder: (
                            BuildContext context,
                            int index,
                            int pageViewIndex,
                          ) {
                            final GroupSelectionGroupModel group =
                                model.user!.groups.elementAt(index);
                            return GroupSelectionCard(
                              groupName: group.name,
                              groupDescription: group.description,
                              groupImage: group.imageUrl,
                              onTap: () {
                                context.goNamed(
                                  groupRoute.name,
                                  pathParameters: <String, String>{
                                    "groupId": group.id!,
                                  },
                                );
                              },
                              onTapInviteButton: () async {
                                controller.setupMemberInvitation(
                                  groupId: group.id!,
                                );
                                final bool? result = await showDialog(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      InviteMembersDialog(
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
                              if (model.user!.groups.isNotEmpty)
                                Center(
                                  child: CarouselIndicator(
                                    animationDuration: 0,
                                    space: 15,
                                    height: 8,
                                    width: 8,
                                    activeColor: Colors.black,
                                    color: Colors.black26,
                                    count: model.user!.groups.length,
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
    );
  }

  Future<bool?> _showAlertDialog() async {
    final GroupSelectionController controller =
        ref.read(providers.groupSelectionControllerProvider.notifier);
    controller.createNewGroup();
    return showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 400,
          child: CreateGroupDialog(
            nameValidator: (String? value) => controller.validateFormField(
              fieldType: FormValidationType.groupName,
              context: context,
              value: value,
            ),
            onGroupNameChanged: controller.setNewGroupName,
            onGroupDescriptionChanged: controller.setNewGroupDescription,
            onImageChanged: controller.setGroupImage,
          ),
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

  String? validateAndAddEmailToInvitations({
    required String? email,
    required BuildContext context,
  });

  void removeMailFromInvitations(String email);

  void inviteGroupMembers({required bool confirmed});
}
