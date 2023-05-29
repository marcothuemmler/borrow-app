import 'package:borrow_app/widgets/textform_fields/textfield.widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewGroupDialog extends StatelessWidget {
  const NewGroupDialog({
    super.key,
    this.nameValidator,
    this.descriptionValidator,
    required this.setGroupName,
    required this.setGroupDescription,
  });

  final String? Function(String?)? nameValidator;
  final String? Function(String?)? descriptionValidator;
  final Function(String) setGroupName;
  final Function(String) setGroupDescription;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return AlertDialog(
      title: const Text('Neue Gruppe'),
      content: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: ListBody(
            children: <Widget>[
              TextFieldWidget(
                text: "Name",
                validator: nameValidator,
                onChanged: setGroupName,
                autocorrect: false,
              ),
              TextFieldWidget(
                text: "Beschreibung",
                validator: descriptionValidator,
                onChanged: setGroupDescription,
                autocorrect: false,
              ),
            ],
          ),
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Einfügen'),
          onPressed: () {
            formKey.currentState!.save();
            if (formKey.currentState!.validate()) {
              context.pop(true);
            }
          },
        ),
        TextButton(
          child: const Text('Abbrechen'),
          onPressed: () {
            context.pop(false);
          },
        ),
      ],
    );
  }
}
