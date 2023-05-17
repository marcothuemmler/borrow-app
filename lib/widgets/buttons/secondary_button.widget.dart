import 'package:flutter/material.dart';

class SecondaryButtonWidget extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const SecondaryButtonWidget({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 32,
        ),
        textStyle: const TextStyle(fontSize: 19),
      ),
      child: Text(text),
    );
  }
}
