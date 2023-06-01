import 'package:flutter/material.dart';

class InvitationChip extends StatelessWidget {
  final String text;
  final void Function(String) onDeleted;

  const InvitationChip({
    Key? key,
    required this.text,
    required this.onDeleted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      elevation: 2,
      onDeleted: () => onDeleted(text),
      label: Text(text),
      deleteIcon: const Icon(
        Icons.cancel,
        color: Colors.black54,
        size: 22,
      ),
    );
  }
}
