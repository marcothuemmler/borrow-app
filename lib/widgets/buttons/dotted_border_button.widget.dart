import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class DottedBorderButton extends StatelessWidget {
  final String title;
  final Icon icon;
  final void Function()? onTap;
  final double? width;

  const DottedBorderButton({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: onTap,
          child: DottedBorder(
            borderType: BorderType.RRect,
            color: Colors.grey,
            radius: const Radius.circular(10),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                icon,
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(title),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
