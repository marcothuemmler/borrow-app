import "package:flutter/material.dart";

class TextFieldWidget extends StatelessWidget {
  final String text;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final bool autocorrect;
  final Iterable<String>? autofillHints;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? initialValue;

  const TextFieldWidget({
    super.key,
    required this.text,
    required this.validator,
    required this.onChanged,
    required this.autocorrect,
    this.autofillHints,
    this.keyboardType,
    this.controller,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(height: 16),
        Flexible(
          child: TextFormField(
            initialValue: initialValue,
            controller: controller,
            keyboardType: keyboardType,
            textInputAction: TextInputAction.next,
            autofillHints: autofillHints,
            autocorrect: autocorrect,
            validator: validator,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: text,
            ),
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
