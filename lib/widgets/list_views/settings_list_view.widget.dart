import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsListView extends StatelessWidget {
  final List<String> itemList;
  const SettingsListView({super.key, required this.itemList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
          child: Card(
            margin: EdgeInsets.zero,
            elevation: 0,
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              onTap: null,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                child: SizedBox(
                  height: 90,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(7),
                          bottomLeft: Radius.circular(7),
                        ),
                        child: Image(
                          image: AssetImage("assets/images/default.jpg"),
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 8),
                            Text(
                              itemList[index],
                              style: const TextStyle(fontWeight: FontWeight.w700),
                              maxLines: 1,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}