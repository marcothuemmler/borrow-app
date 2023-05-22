import 'package:borrow_app/common/providers.dart';
import 'package:borrow_app/views/group_selection/group_selection.model.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    final controller = ref.read(providers.groupControllerProvider.notifier);
    final model = ref.watch(providers.groupControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Gruppenansicht"),
        leading: const BackButton(),
      ),
      body: model.isLoading
          ? const Center(child: CircularProgressIndicator())
          : model.hasError
              ? const Center(
                  child: Text("Something went wrong"),
                )
              : model.user.fold(
                  () => const Center(
                    child: Text("Something went wrong"),
                  ),
                  (user) => Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(height: 70),
                        if (user.groups.isNotEmpty)
                          CarouselSlider.builder(
                            carouselController: _carouselController,
                            options: CarouselOptions(
                              height: 400,
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
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height,
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 20,
                                ),
                                decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 20,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Text(
                                    user.groups.elementAt(index).name,
                                    style: const TextStyle(fontSize: 32),
                                  ),
                                ),
                              );
                            },
                          ),
                        const SizedBox(height: 20),
                        if (user.groups.isNotEmpty)
                          CarouselIndicator(
                            animationDuration: 0,
                            space: 15,
                            height: 8,
                            width: 8,
                            activeColor: Colors.black,
                            color: Colors.black26,
                            count: user.groups.length,
                            index: _currentIndex,
                          ),
                        const SizedBox(height: 40),
                        ElevatedButton(
                          onPressed: () => controller.addGroup(
                              GroupModel(name: "", description: null)),
                          child: const Text("Neue Gruppe"),
                        ),
                        ElevatedButton(
                          onPressed: () => {},
                          child: const Text("Einladen"),
                        )
                      ],
                    ),
                  ),
                ),
    );
  }
}

abstract class GroupSelectionController
    extends StateNotifier<GroupSelectionModel> {
  GroupSelectionController(GroupSelectionModel model) : super(model);

  void addGroup(GroupModel group);
}
