import 'package:borrow_app/common/providers.dart';
import 'package:borrow_app/widgets/chips/invitation_chip.widget.dart';
import 'package:borrow_app/widgets/textform_fields/textfield.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class InviteMembersDialog extends ConsumerWidget {
  final String groupId;
  final String groupName;
  final emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  InviteMembersDialog({
    Key? key,
    required this.groupId,
    required this.groupName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller =
        ref.read(providers.groupSelectionControllerProvider.notifier);
    final model = ref.watch(providers.groupSelectionControllerProvider);
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      contentPadding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      actionsPadding: const EdgeInsets.all(20),
      actionsAlignment: MainAxisAlignment.end,
      title: const Text("Invite members"),
      content: SizedBox(
        width: 350,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 52,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(5),
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    spacing: 8,
                    alignment: WrapAlignment.start,
                    direction: Axis.horizontal,
                    children: [
                      ...?model.invitations?.emails.map(
                        (email) => InvitationChip(
                          text: email,
                          onDeleted: () =>
                              controller.removeMailFromInvitations(email),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Form(
                key: _formKey,
                child: TextFieldWidget(
                  text: "Enter email:",
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  validator: controller.validateAndAddEmail,
                  onChanged: null,
                  autocorrect: false,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        emailController.clear();
                      }
                    },
                    child: const Text("Add"),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: context.pop,
          child: const Text("Cancel"),
        ),
        ElevatedButton(
          onPressed:
              model.invitations != null && model.invitations!.emails.isNotEmpty
                  ? () => context.pop(true)
                  : null,
          child: const Text("Send"),
        )
      ],
    );
  }
}
