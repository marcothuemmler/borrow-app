import "package:flutter/cupertino.dart";

class ImagePlaceholder extends StatelessWidget {
  const ImagePlaceholder({
    super.key,
    required double size,
    required IconData iconData,
  })  : _size = size,
        _iconData = iconData;

  final double _size;
  final IconData _iconData;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: CupertinoColors.systemGrey6,
      child: Center(
        child: Icon(
          _iconData,
          size: _size,
          color: CupertinoColors.systemGrey4,
        ),
      ),
    );
  }
}
