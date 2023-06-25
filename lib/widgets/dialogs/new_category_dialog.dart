import "package:borrow_app/widgets/textform_fields/textfield.widget.dart";
import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";

class NewCategoryDialog extends StatelessWidget {
  NewCategoryDialog({
    super.key,
    this.nameValidator,
    required this.setName,
    required this.setDescription,
    required this.createCategoryCallback,
  });

  final String? Function(String?)? nameValidator;
  final void Function(String) setName;
  final void Function(String) setDescription;
  final void Function() createCategoryCallback;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance
        .addPostFrameCallback((_) => createCategoryCallback());
    return AlertDialog(
      actionsPadding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
      contentPadding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      title: Text(
        AppLocalizations.of(context).newCategory,
        style: const TextStyle(fontSize: 18),
      ),
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
            children: <Widget>[
              Expanded(
                child: TextButton(
                  child: Text(AppLocalizations.of(context).cancel),
                  onPressed: () => Navigator.of(context).pop(false),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  child: Text(AppLocalizations.of(context).add),
                  onPressed: () {
                    _formKey.currentState!.save();
                    if (_formKey.currentState!.validate()) {
                      Navigator.of(context).pop(true);
                    }
                  },
                ),
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
