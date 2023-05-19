import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../common/providers.dart';

const exampleGroups = ["Sportverein", "WG", "Kaffeeklatsch", "Nachbarschaft"];

class GroupView extends ConsumerStatefulWidget {

  @override
  ConsumerState<GroupView> createState() {
    return _LoginViewState();
  }
}

class _LoginViewState extends ConsumerState<GroupView> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final controller = ref.read(providers.groupControllerProvider.notifier);
    final model = ref.watch(providers.groupControllerProvider);

    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: const BackButton(),
          centerTitle: false,
          title: const Text("Gruppenansicht"),
          titleTextStyle: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.black),
      body: Center(
        key: _formKey,
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                CarouselSlider(
                  options: CarouselOptions(height: 400),
                  items: exampleGroups.map((s) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            margin: const EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: const BoxDecoration(
                                color: Colors.amber,
                            ),
                            child: Center(
                                child: Text(s, style: const TextStyle(fontSize: 32.0)
                            ),)
                        );
                      },
                    );
                  }).toList(),
                ),
                buttonWidget("Neue Gruppe", Colors.greenAccent, 24.0, 24.0),
              ],
            ),
          )
        )
      ),
    );
  }
}

Widget buttonWidget(String s, MaterialAccentColor c, double padding, double fontsize) {
  return Padding(
    padding: EdgeInsets.all(padding),
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          elevation: 12.0,
          backgroundColor: c
      ), child: Text(s, style: TextStyle(fontSize: fontsize),),
    ),
  );
}

abstract class GroupController extends StateNotifier<int> {
  GroupController(super.state);
  void setGroups(String);
}