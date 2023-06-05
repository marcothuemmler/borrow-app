import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String text;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final bool autocorrect;
  final Iterable<String>? autofillHints;
  final TextInputType? keyboardType;

  const TextFieldWidget({
    super.key,
    required this.text,
    required this.validator,
    required this.onChanged,
    required this.autocorrect,
    this.autofillHints,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 16),
        Text(text),
        const SizedBox(height: 10),
        Flexible(
          child: TextFormField(
            keyboardType: keyboardType,
            textInputAction: TextInputAction.next,
            autofillHints: autofillHints,
            autocorrect: autocorrect,
            validator: validator,
            decoration: const InputDecoration(border: OutlineInputBorder()),
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
