import "package:flutter/material.dart";

class TextFieldWidget extends StatelessWidget {
  final String _text;
  final String? Function(String?)? _validator;
  final void Function(String)? _onChanged;
  final bool _autocorrect;
  final Iterable<String>? _autofillHints;
  final TextInputType? _keyboardType;
  final TextEditingController? _controller;
  final String? _initialValue;

  const TextFieldWidget({
    super.key,
    required String text,
    required String? Function(String?)? validator,
    required void Function(String)? onChanged,
    required bool autocorrect,
    Iterable<String>? autofillHints,
    TextInputType? keyboardType,
    TextEditingController? controller,
    String? initialValue,
  })  : _initialValue = initialValue,
        _controller = controller,
        _keyboardType = keyboardType,
        _autofillHints = autofillHints,
        _autocorrect = autocorrect,
        _onChanged = onChanged,
        _validator = validator,
        _text = text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(height: 16),
        Flexible(
          child: TextFormField(
            initialValue: _initialValue,
            controller: _controller,
            keyboardType: _keyboardType,
            textInputAction: TextInputAction.next,
            autofillHints: _autofillHints,
            autocorrect: _autocorrect,
            validator: _validator,
            decoration: InputDecoration(
              errorMaxLines: 3,
              border: const OutlineInputBorder(),
              labelText: _text,
            ),
            onChanged: _onChanged,
          ),
        ),
      ],
    );
  }
}
