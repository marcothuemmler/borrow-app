import "package:borrow_app/common/extensions/build_context_extensions.dart";
import "package:borrow_app/widgets/textform_fields/textfield.widget.dart";
import "package:borrow_app/widgets/various_components/image_upload.widget.dart";
import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:go_router/go_router.dart";
import "package:image_picker/image_picker.dart";

class CreateGroupDialog extends StatelessWidget {
  CreateGroupDialog({
    super.key,
    String? Function(String?)? nameValidator,
    String? Function(String?)? descriptionValidator,
    required void Function(String) onGroupNameChanged,
    required void Function(String) onGroupDescriptionChanged,
    required void Function(XFile?) onImageChanged,
  })  : _onImageChanged = onImageChanged,
        _onGroupDescriptionChanged = onGroupDescriptionChanged,
        _onGroupNameChanged = onGroupNameChanged,
        _descriptionValidator = descriptionValidator,
        _nameValidator = nameValidator;

  final String? Function(String?)? _nameValidator;
  final String? Function(String?)? _descriptionValidator;
  final void Function(String) _onGroupNameChanged;
  final void Function(String) _onGroupDescriptionChanged;
  final void Function(XFile?) _onImageChanged;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final bool isPortrait = context.isPortrait;
    return ScaffoldMessenger(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: AlertDialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          title: Text(
            AppLocalizations.of(context).newGroup,
            style: const TextStyle(fontSize: 18),
          ),
          actionsPadding:
              const EdgeInsets.only(left: 20, right: 20, bottom: 10),
          contentPadding:
              const EdgeInsets.only(left: 20, right: 20, bottom: 10),
          content: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Flex(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                direction: isPortrait ? Axis.vertical : Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: SizedBox(
                      height: 150,
                      width: 150,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: ImageUpload(
                          onImageChanged: _onImageChanged,
                          text: AppLocalizations.of(context).setGroupImage,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <TextFieldWidget>[
                        TextFieldWidget(
                          text: AppLocalizations.of(context).groupName,
                          keyboardType: TextInputType.name,
                          validator: _nameValidator,
                          onChanged: _onGroupNameChanged,
                          autocorrect: false,
                        ),
                        TextFieldWidget(
                          text: AppLocalizations.of(context).groupDescription,
                          keyboardType: TextInputType.text,
                          validator: _descriptionValidator,
                          onChanged: _onGroupDescriptionChanged,
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
                      child: Text(
                        AppLocalizations.of(context).cancel,
                      ),
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
        ),
      ),
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
