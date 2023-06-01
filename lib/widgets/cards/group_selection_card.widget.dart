import 'package:flutter/material.dart';

class GroupSelectionCard extends StatelessWidget {
  final String groupName;
  final String? groupDescription;
  final void Function()? onTap;
  final String? groupImage;

  const GroupSelectionCard({
    super.key,
    required this.onTap,
    required this.groupName,
    required this.groupDescription,
    required this.groupImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 20,
            offset: Offset(0, 3),
          )
        ],
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
      ),
      child: InkWell(
        onTap: onTap,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(7),
                    topRight: Radius.circular(7),
                  ),
                  child: Image(
                    height: double.infinity,
                    width: double.infinity,
                    image: groupImage is String
                        ? Image.network(groupImage!).image
                        : const AssetImage("assets/images/default.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 12,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(groupName, style: const TextStyle(fontSize: 20)),
                  const SizedBox(height: 10),
                  Text(
                    groupDescription ?? "",
                    style: const TextStyle(fontSize: 16, color: Colors.black45),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
