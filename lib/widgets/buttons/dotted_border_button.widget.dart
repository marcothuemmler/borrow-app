import "package:dotted_border/dotted_border.dart";
import "package:flutter/material.dart";

class DottedBorderButton extends StatelessWidget {
  final String _title;
  final Icon _icon;
  final void Function()? _onTap;
  final double? _width;

  const DottedBorderButton({
    super.key,
    required String title,
    required Icon icon,
    required void Function()? onTap,
    required double? width,
  })  : _width = width,
        _onTap = onTap,
        _icon = icon,
        _title = title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: _width,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: _onTap,
          child: DottedBorder(
            borderType: BorderType.RRect,
            color: Colors.grey,
            radius: const Radius.circular(10),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                _icon,
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[Text(_title)],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
