import 'package:borrow_app/widgets/textform_fields/textfield.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NewCategoryDialog extends StatelessWidget {
  NewCategoryDialog({
    super.key,
    this.nameValidator,
    required this.setName,
    required this.setDescription,
    required this.createCategoryCallback,
  });

  final String? Function(String?)? nameValidator;
  final Function(String) setName;
  final Function(String) setDescription;
  final void Function() createCategoryCallback;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance
        .addPostFrameCallback((_) => createCategoryCallback());
    return AlertDialog(
      actionsPadding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      contentPadding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      title: Text(AppLocalizations.of(context).newCategory),
      content: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: ListBody(
            children: <Widget>[
              TextFieldWidget(
                text: AppLocalizations.of(context).name,
                validator: nameValidator,
                onChanged: setName,
                autocorrect: false,
              ),
              TextFieldWidget(
                text: AppLocalizations.of(context).description,
                validator: null,
                onChanged: setDescription,
                autocorrect: false,
              ),
            ],
          ),
        ),
      ),
      actions: <Widget>[
        FocusTraversalGroup(
          policy: _ReversedTraversalPolicy(),
          child: Row(
            children: [
              TextButton(
                child: Text(AppLocalizations.of(context).cancel),
                onPressed: () => Navigator.of(context).pop(false),
              ),
              ElevatedButton(
                child: Text(AppLocalizations.of(context).add),
                onPressed: () {
                  _formKey.currentState!.save();
                  if (_formKey.currentState!.validate()) {
                    Navigator.of(context).pop(true);
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ReversedTraversalPolicy extends FocusTraversalPolicy
    with DirectionalFocusTraversalPolicyMixin {
  @override
  Iterable<FocusNode> sortDescendants(
    Iterable<FocusNode> descendants,
    FocusNode currentNode,
  ) {
    return descendants.toList().reversed;
  }
}
