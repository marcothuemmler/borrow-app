import "package:borrow_app/common/extensions/widget_extensions.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class AppCircleAvatar extends StatelessWidget {
  const AppCircleAvatar({
    super.key,
    required String? imageUrl,
    required double radius,
    double? iconSize,
  })  : _imageUrl = imageUrl,
        _radius = radius,
        _iconSize = iconSize;

  final String? _imageUrl;
  final double _radius;
  final double? _iconSize;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: _radius,
      backgroundColor: CupertinoColors.systemGrey5,
      child: _imageUrl is String
          ? ClipRRect(
              borderRadius: BorderRadius.circular(_radius),
              child: Image.network(
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
                _imageUrl!,
                loadingBuilder: imageLoadingBuilder,
                errorBuilder: (_, __, ___) => PlaceholderIcon(size: _iconSize),
              ),
            )
          : PlaceholderIcon(size: _iconSize),
    );
  }
}

class PlaceholderIcon extends StatelessWidget {
  const PlaceholderIcon({super.key, required double? size}) : _size = size;

  final double? _size;

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.person, color: CupertinoColors.systemGrey, size: _size);
  }
}
