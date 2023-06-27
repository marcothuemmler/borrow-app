import "package:flutter/material.dart";

class PasswordFieldWidget extends StatelessWidget {
  final String _text;
  final void Function(String)? _onChanged;
  final void Function()? _onTapIcon;
  final bool _obscureText;

  const PasswordFieldWidget({
    super.key,
    required String text,
    required String? Function(String?)? validator,
    required void Function()? onTapIcon,
    required void Function(String)? onChanged,
    required bool obscureText,
  })  : _obscureText = obscureText,
        _onTapIcon = onTapIcon,
        _onChanged = onChanged,
        _text = text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 16),
        TextFormField(
          keyboardType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.next,
          autofillHints: const <String>[AutofillHints.password],
          autocorrect: false,
          decoration: InputDecoration(
            errorMaxLines: 3,
            border: const OutlineInputBorder(),
            labelText: _text,
            suffixIcon: GestureDetector(
              onTap: _onTapIcon,
              child: Icon(
                _obscureText
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
              ),
            ),
          ),
          obscureText: _obscureText,
          onChanged: _onChanged,
        ),
      ],
    );
  }
}
