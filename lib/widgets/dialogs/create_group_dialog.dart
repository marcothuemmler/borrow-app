import "package:borrow_app/widgets/textform_fields/textfield.widget.dart";
import "package:borrow_app/widgets/various_components/image_upload.widget.dart";
import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:go_router/go_router.dart";
import "package:image_picker/image_picker.dart";

class CreateGroupDialog extends StatelessWidget {
  CreateGroupDialog({
    super.key,
    this.nameValidator,
    this.descriptionValidator,
    required this.onGroupNameChanged,
    required this.onGroupDescriptionChanged,
    required this.onImageChanged,
  });

  final String? Function(String?)? nameValidator;
  final String? Function(String?)? descriptionValidator;
  final void Function(String) onGroupNameChanged;
  final void Function(String) onGroupDescriptionChanged;
  final void Function(XFile?) onImageChanged;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      title: Text(AppLocalizations.of(context).newGroup),
      actionsPadding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      contentPadding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      content: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Flex(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            direction: isPortrait ? Axis.vertical : Axis.horizontal,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(30),
                child: ImageUpload(
                  onImageChanged: onImageChanged,
                  text: AppLocalizations.of(context).setGroupImage,
                ),
              ),
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <TextFieldWidget>[
                    TextFieldWidget(
                      text: AppLocalizations.of(context).groupName,
                      keyboardType: TextInputType.name,
                      validator: nameValidator,
                      onChanged: onGroupNameChanged,
                      autocorrect: false,
                    ),
                    TextFieldWidget(
                      text: AppLocalizations.of(context).groupDescription,
                      keyboardType: TextInputType.text,
                      validator: descriptionValidator,
                      onChanged: onGroupDescriptionChanged,
                      autocorrect: false,
                    ),
                  ],
                ),
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
              SizedBox(width: isPortrait ? 0 : 200),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  child: Text(AppLocalizations.of(context).cancel),
                  onPressed: () => context.pop(false),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  child: Text(AppLocalizations.of(context).createGroup),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      context.pop(true);
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
