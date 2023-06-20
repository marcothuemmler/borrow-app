import 'dart:typed_data';

import 'package:borrow_app/widgets/dialogs/image_change_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class ImageUpload extends StatefulWidget {
  final void Function(XFile? image)? _onImageChanged;
  final XFile? _image;
  final String _text;

  const ImageUpload({
    super.key,
    required void Function(XFile?)? onImageChanged,
    XFile? image,
    required String text,
  })  : _onImageChanged = onImageChanged,
        _image = image,
        _text = text;

  @override
  State<ImageUpload> createState() => _ImageUploadState();
}

class _ImageUploadState extends State<ImageUpload> {
  Image? _image;
  bool _hovered = false;
  late final void Function(XFile? image)? _onImageChanged;
  final double size = 150;
  late final String _text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: size,
        width: size,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: InkWell(
            hoverColor: Colors.transparent,
            focusColor: Colors.transparent,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: _selectFile,
            onHover: (bool hovered) => setState(() => _hovered = hovered),
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                if (_image is! Image)
                  const Image(
                    image: AssetImage("assets/images/default.jpg"),
                    fit: BoxFit.cover,
                  )
                else
                  Image(image: _image!.image, fit: BoxFit.cover),
                AnimatedOpacity(
                  opacity: _hovered ? 1 : 0,
                  duration: const Duration(milliseconds: 150),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 0.7),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 2,
                            )
                          ],
                        ),
                        width: size,
                        height: 40,
                        child: Center(
                          child: Text(
                            _text,
                            style: const TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _onImageChanged = widget._onImageChanged;
    _text = widget._text;
    _initImage(image: widget._image);
  }

  Future<void> _initImage({required XFile? image}) async {
    if (image is XFile) {
      final Uint8List bytes = await image.readAsBytes();
      setState(() => _image = Image.memory(bytes));
    }
  }

  Future<void> _selectFile() async {
    try {
      final bool? newImageSelected = await _showImageChangeDialog();
      if (newImageSelected is! bool) {
        return;
      }
      if (!newImageSelected) {
        setState(() => _image = null);
        _onImageChanged?.call(null);
        return;
      }
      final XFile? input =
          await ImagePicker().pickImage(source: ImageSource.gallery);
      _initImage(image: input);
      _onImageChanged?.call(input);
    } catch (error) {
      _showErrorSnackBar();
    }
  }

  void _showErrorSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Center(
          child: Text(
            AppLocalizations.of(context).imageSelectionFailed,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }

  Future<bool?> _showImageChangeDialog() async {
    return await showDialog(
      context: context,
      builder: (BuildContext context) => ImageChangeDialog(
        onSetImagePressed: () => context.pop(true),
        onRemoveImagePressed: () => context.pop(false),
        onCancelPressed: () => context.pop(),
        showRemoveOption: _image is Image,
      ),
    );
  }
}
