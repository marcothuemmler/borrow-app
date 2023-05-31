import 'package:borrow_app/common/providers.dart';
import 'package:borrow_app/services/routing/routes.dart';
import 'package:borrow_app/views/group_selection/group_selection.model.dart';
import 'package:borrow_app/widgets/cards/group_selection_card.widget.dart';
import 'package:borrow_app/widgets/dialogs/create_group_dialog.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
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
        title: const Text("My Groups"),
        leading: const BackButton(),
        actions: [
          if (!isPortrait)
            Row(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                  ),
                  onPressed: () async {
                    controller.addGroup(
                      confirmed: await _showAlertDialog(controller),
                    );
                  },
                  child: const Text("New Group"),
                ),
                const SizedBox(width: 20),
              ],
            )
        ],
      ),
      body: model.isLoading
          ? const Center(child: CircularProgressIndicator())
          : model.hasError
              ? const Center(child: Text("Something went wrong"))
              : model.user.fold(
                  () => const Center(child: Text("Something went wrong")),
                  (user) => SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
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
                                setState(() {
                                  _currentIndex = val;
                                  _carouselController.animateToPage(val);
                                });
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
                                onTapInviteButton: () {
                                  controller.inviteGroupMember(
                                    groupId: group.id,
                                  );
                                },
                                inviteButtonHidden: index != _currentIndex,
                              );
                            },
                          ),
                        if (isPortrait)
                          IntrinsicWidth(
                            child: Column(
                              children: [
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
                                    controller.addGroup(
                                      confirmed:
                                          await _showAlertDialog(controller),
                                    );
                                  },
                                  child: const Text("New Group"),
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

  Future<bool?> _showAlertDialog(GroupSelectionController controller) async {
    controller.createNewGroup();
    return showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return CreateGroupDialog(
          nameValidator: (_) =>
              controller.validateFormField(fieldName: "groupName"),
          descriptionValidator: (_) =>
              controller.validateFormField(fieldName: "groupDescription"),
          onGroupNameChanged: controller.setNewGroupName,
          onGroupDescriptionChanged: controller.setNewGroupDescription,
          onImageChanged: (XFile? file) => controller.setGroupImage(file),
        );
      },
    );
  }
}

abstract class GroupSelectionController
    extends StateNotifier<GroupSelectionModel> {
  GroupSelectionController(GroupSelectionModel model) : super(model);

  void addGroup({required bool? confirmed});

  String? validateFormField({required String fieldName});

  void createNewGroup();

  void setNewGroupName(String value);

  void setNewGroupDescription(String value);

  void setGroupImage(XFile? file);

  void inviteGroupMember({String? groupId});
}
