import 'package:borrow_app/common/providers.dart';
import 'package:borrow_app/views/group_selection/group_selection.model.dart';
import 'package:borrow_app/views/group_selection/group_selection.view.dart';
import 'package:borrow_app/widgets/chips/invitation_chip.widget.dart';
import 'package:borrow_app/widgets/textform_fields/textfield.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class InviteMembersDialog extends ConsumerWidget {
  final String groupId;
  final String groupName;
  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  InviteMembersDialog({
    Key? key,
    required this.groupId,
    required this.groupName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GroupSelectionController controller =
        ref.read(providers.groupSelectionControllerProvider.notifier);
    final GroupSelectionModel model =
        ref.watch(providers.groupSelectionControllerProvider);
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
            children: <Widget>[
              SizedBox(
                height: 52,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(5),
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    spacing: 8,
                    alignment: WrapAlignment.start,
                    direction: Axis.horizontal,
                    children: <InvitationChip>[
                      ...?model.invitations?.emails.map(
                        (String email) => InvitationChip(
                          text: email,
                          onDeleted: controller.removeMailFromInvitations,
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
                  validator: controller.validateAndAddEmailToInvitations,
                  onChanged: null,
                  autocorrect: false,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <TextButton>[
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
      actions: <ButtonStyleButton>[
        TextButton(
          onPressed: context.pop,
          child: const Text("Cancel"),
        ),
        ElevatedButton(
          onPressed: model.invitations?.emails.isNotEmpty ?? false
              ? () => context.pop(true)
              : null,
          child: const Text("Send"),
        )
      ],
    );
  }
}
