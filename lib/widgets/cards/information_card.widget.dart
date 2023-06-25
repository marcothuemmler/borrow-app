import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class InformationCard extends StatelessWidget {
  const InformationCard({super.key, required String message})
      : _message = message;

  final String _message;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: const Offset(0, 3),
            blurRadius: 3,
          )
        ],
        color: CupertinoColors.systemGrey5,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        _message,
        style: const TextStyle(fontSize: 15),
        textAlign: TextAlign.center,
      ),
    );
  }
}
