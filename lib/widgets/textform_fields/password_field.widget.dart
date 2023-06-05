import 'package:flutter/material.dart';

class PasswordFieldWidget extends StatelessWidget {
  final String text;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function()? onTapIcon;
  final bool obscureText;

  const PasswordFieldWidget({
    super.key,
    required this.text,
    required this.validator,
    required this.onTapIcon,
    required this.onChanged,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        const Text('Password'),
        const SizedBox(height: 10),
        TextFormField(
          keyboardType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.next,
          autofillHints: const [AutofillHints.password],
          autocorrect: false,
          validator: validator,
          decoration: InputDecoration(
            errorMaxLines: 3,
            border: const OutlineInputBorder(),
            suffixIcon: GestureDetector(
              onTap: onTapIcon,
              child: Icon(
                obscureText
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
              ),
            ),
          ),
          obscureText: obscureText,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
