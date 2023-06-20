import "package:flutter/material.dart";

class SettingsItem extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  final IconData? iconData;
  final Color? iconColor;

  const SettingsItem({
    super.key,
    required this.text,
    this.onTap,
    this.iconData,
    this.iconColor = Colors.black54,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45),
        child: SizedBox(
          height: 80,
          child: Row(
            children: <Widget>[
              if (iconData is IconData)
                Icon(iconData!, size: 32, color: iconColor),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height: 8),
                    Text(
                      text,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
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
