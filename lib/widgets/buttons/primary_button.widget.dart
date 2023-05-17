import 'package:flutter/material.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const PrimaryButtonWidget({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 32,
        ),
        textStyle: const TextStyle(fontSize: 19),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(7),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
