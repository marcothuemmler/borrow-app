import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String text;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;

  const TextFieldWidget({super.key, required this.text, required this.validator, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        Text(text),
        const SizedBox(height: 10),
        TextFormField(
          maxLines: 1,
          validator: validator,
          decoration: const InputDecoration(border: OutlineInputBorder()),
          onChanged: onChanged,
        ),
      ],
    );
  }
}
