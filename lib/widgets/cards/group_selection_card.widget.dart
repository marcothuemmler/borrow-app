import "package:flutter/material.dart";

class GroupSelectionCard extends StatelessWidget {
  final String groupName;
  final String? groupDescription;
  final void Function()? onTap;
  final void Function()? onTapInviteButton;
  final String? groupImage;
  final bool inviteButtonHidden;

  const GroupSelectionCard({
    super.key,
    required this.onTap,
    required this.onTapInviteButton,
    required this.groupName,
    required this.groupDescription,
    required this.groupImage,
    required this.inviteButtonHidden,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      decoration: const BoxDecoration(
        boxShadow: <BoxShadow>[
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
          children: <Widget>[
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(7),
                    topRight: Radius.circular(7),
                  ),
                  child: IgnorePointer(
                    ignoring: inviteButtonHidden,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: <Widget>[
                        Image(
                          height: double.infinity,
                          width: double.infinity,
                          image: groupImage is String
                              ? Image.network(groupImage!).image
                              : const AssetImage("assets/images/default.jpg"),
                          fit: BoxFit.cover,
                        ),
                        AnimatedOpacity(
                          opacity: inviteButtonHidden ? 0 : 1,
                          duration: const Duration(milliseconds: 250),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                elevation: 5,
                                backgroundColor: Colors.white70,
                              ),
                              onPressed: onTapInviteButton,
                              child: const Icon(
                                Icons.person_add,
                                color: Colors.black,
                                size: 22,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
                children: <Widget>[
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
