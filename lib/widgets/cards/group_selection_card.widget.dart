import "dart:math";

import "package:borrow_app/common/extensions/widget_extensions.dart";
import "package:borrow_app/widgets/various_components/image_placeholder.widget.dart";
import "package:flutter/material.dart";

class GroupSelectionCard extends StatelessWidget {
  final String _groupName;
  final String? _groupDescription;
  final void Function()? _onTap;
  final void Function()? _onTapInviteButton;
  final String? _groupImage;
  final bool _inviteButtonHidden;

  const GroupSelectionCard({
    super.key,
    required void Function()? onTap,
    required void Function()? onTapInviteButton,
    required String groupName,
    required String? groupDescription,
    required String? groupImage,
    required bool inviteButtonHidden,
  })  : _inviteButtonHidden = inviteButtonHidden,
        _groupImage = groupImage,
        _onTapInviteButton = onTapInviteButton,
        _onTap = onTap,
        _groupDescription = groupDescription,
        _groupName = groupName;

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
        onTap: _onTap,
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
                    ignoring: _inviteButtonHidden,
                    child: LayoutBuilder(
                      builder: (
                        BuildContext context,
                        BoxConstraints constraints,
                      ) {
                        return Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            _groupImage is String
                                ? Image.network(
                                    _groupImage!,
                                    height: double.infinity,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                    loadingBuilder: imageLoadingBuilder,
                                  )
                                : ImagePlaceholder(
                                    iconData: Icons.image_outlined,
                                    size: min(
                                          constraints.maxHeight,
                                          constraints.maxWidth,
                                        ) *
                                        0.8,
                                  ),
                            Container(
                              alignment: Alignment.bottomRight,
                              child: AnimatedOpacity(
                                opacity: _inviteButtonHidden ? 0 : 1,
                                duration: const Duration(milliseconds: 250),
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder(),
                                      elevation: 5,
                                      backgroundColor: Colors.white70,
                                    ),
                                    onPressed: _onTapInviteButton,
                                    child: const Icon(
                                      Icons.person_add,
                                      color: Colors.black,
                                      size: 22,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(_groupName, style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 10),
                  Text(
                    _groupDescription ?? "",
                    style: const TextStyle(fontSize: 12, color: Colors.black45),
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
