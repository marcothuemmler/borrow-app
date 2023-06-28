import "package:flutter/material.dart";

class InvitationChip extends StatelessWidget {
  final String _text;
  final void Function(String) _onDeleted;

  const InvitationChip({
    super.key,
    required String text,
    required void Function(String) onDeleted,
  })  : _onDeleted = onDeleted,
        _text = text;

  @override
  Widget build(BuildContext context) {
    return Chip(
      elevation: 2,
      onDeleted: () => _onDeleted(_text),
      label: Text(_text),
      deleteIcon: const Icon(
        Icons.cancel,
        color: Colors.black54,
        size: 22,
      ),
    );
  }
}
