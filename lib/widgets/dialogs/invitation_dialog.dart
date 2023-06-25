import "package:borrow_app/common/providers.dart";
import "package:borrow_app/views/group_selection/group_selection.model.dart";
import "package:borrow_app/views/group_selection/group_selection.view.dart";
import "package:borrow_app/widgets/chips/invitation_chip.widget.dart";
import "package:borrow_app/widgets/textform_fields/textfield.widget.dart";
import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:go_router/go_router.dart";

class InviteMembersDialog extends ConsumerWidget {
  final String groupId;
  final String groupName;
  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  InviteMembersDialog({
    super.key,
    required this.groupId,
    required this.groupName,
  });

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
      title: Text(
        AppLocalizations.of(context).invite,
        style: const TextStyle(fontSize: 18),
      ),
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
                  text: AppLocalizations.of(context).enterEmail,
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  validator: (String? value) =>
                      controller.validateAndAddEmailToInvitations(
                    email: value,
                    context: context,
                  ),
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
                    child: Text(AppLocalizations.of(context).add),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      actions: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                onPressed: context.pop,
                child: Text(AppLocalizations.of(context).cancel),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: model.invitations?.emails.isNotEmpty ?? false
                    ? () => context.pop(true)
                    : null,
                child: Text(AppLocalizations.of(context).submit),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
