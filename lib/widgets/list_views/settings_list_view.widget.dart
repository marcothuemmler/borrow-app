import 'package:borrow_app/widgets/cards/settings_card.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsListView extends StatelessWidget {
  final List<SettingsCardView> itemList;
  const SettingsListView({super.key, required this.itemList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: itemList.length,
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
          child: itemList[index],
        );
      },
    );
  }
}