import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:borrow_app/widgets/textform_fields/textfield.widget.dart';

class NewCategoryDialog extends StatelessWidget {
  const NewCategoryDialog({
    super.key,
    this.nameValidator,
    required this.setCategoryValidator,
    required descriptionValidator,
    required this.setName,
    required this.setDescription,
  });

  final String? Function(String?)? nameValidator;
  final Function(String) setCategoryValidator;
  final Function(String) setName;
  final Function(String) setDescription;

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    setDescription("");
    setName("");
    return AlertDialog(
      // <-- SEE HERE
      title: const Text('Neue Gruppe'),
      content: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: ListBody(
            children: <Widget>[
              TextFieldWidget(
                text: "Name",
                validator: nameValidator,
                onChanged: setName,
                autocorrect: false,
              ),
              TextFieldWidget(
                text: "Beschreibung",
                validator: nameValidator,
                onChanged: setDescription,
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
            _formKey.currentState!.save();
            if (_formKey.currentState!.validate()) {
              Navigator.of(context).pop(true);
            }
          },
        ),
        TextButton(
          child: const Text('Abbrechen'),
          onPressed: () {
            Navigator.of(context).pop(false);
          },
        ),
      ],
    );
  }
}
