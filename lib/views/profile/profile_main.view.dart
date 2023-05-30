import 'package:borrow_app/views/dashboard/item_list/item_list.model.dart';
import 'package:borrow_app/widgets/cards/item_card.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileMain extends StatelessWidget {
  const ProfileMain({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = ["Gruppe verwalten", "Meine Einstellungen"];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Profil-Einstellungen"),
          leading: const BackButton(),
        ),
          body: ListView.builder(
              itemCount: items.length,
              padding: const EdgeInsets.only(top: 20),
              itemBuilder: (context, index) {
                return Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, 6),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
                  child: Card(
                    child: Text(items[index]),
                  ),
                );
              },
          ),
      ),
    );
  }
}