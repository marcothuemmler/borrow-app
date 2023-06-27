import "package:flutter/material.dart";

class SettingsItem extends StatelessWidget {
  final String _text;
  final void Function()? _onTap;
  final IconData? _iconData;
  final Color? _iconColor;

  const SettingsItem({
    super.key,
    required String text,
    void Function()? onTap,
    IconData? iconData,
    Color? iconColor = Colors.black54,
  })  : _iconColor = iconColor,
        _iconData = iconData,
        _onTap = onTap,
        _text = text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SizedBox(
          height: 60,
          child: Row(
            children: <Widget>[
              if (_iconData is IconData)
                Icon(_iconData!, size: 24, color: _iconColor),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height: 8),
                    Text(
                      _text,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        height: 0.8,
                      ),
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
