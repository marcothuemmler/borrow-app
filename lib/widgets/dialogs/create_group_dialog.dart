import 'package:borrow_app/widgets/textform_fields/textfield.widget.dart';
import 'package:borrow_app/widgets/various_components/image_upload.widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

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

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      title: const Text('New Group'),
      actionsPadding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      contentPadding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      content: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Flex(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            direction: isPortrait ? Axis.vertical : Axis.horizontal,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(30),
                child: ImageUpload(onImageChanged: onImageChanged),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFieldWidget(
                      text: "Name",
                      keyboardType: TextInputType.name,
                      validator: nameValidator,
                      onChanged: onGroupNameChanged,
                      autocorrect: false,
                    ),
                    TextFieldWidget(
                      text: "Description",
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
            children: [
              SizedBox(width: isPortrait ? 0 : 200),
              Expanded(
                child: TextButton(
                  child: const Text('Cancel'),
                  onPressed: () => context.pop(false),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  child: const Text('Add Group'),
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
