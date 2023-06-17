import 'package:borrow_app/common/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DeleteAccountDialog extends ConsumerWidget {
  const DeleteAccountDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textEditingController = TextEditingController();
    final controller =
        ref.read(providers.profileSettingsControllerProvider.notifier);
    return SafeArea(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 500),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Konto löschen?",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 40),
              const Text(
                "Sie verlieren alle Ihre Gegenstände und Gruppen.",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 30),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 350),
                child: TextFormField(
                  controller: textEditingController,
                  decoration: const InputDecoration(
                    label: Text("Passwort eingeben"),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              TextButton(
                onPressed: () => controller.deleteAccount(
                  password: textEditingController.text,
                ),
                style: TextButton.styleFrom(foregroundColor: Colors.red),
                child: const Text("Konto löschen"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
