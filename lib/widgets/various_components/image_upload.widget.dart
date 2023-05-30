import 'dart:typed_data';

import 'package:borrow_app/widgets/dialogs/image_change_dialog.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class ImageUpload extends StatefulWidget {
  final void Function(XFile? image)? onImageChanged;

  const ImageUpload({Key? key, required this.onImageChanged}) : super(key: key);

  @override
  State<ImageUpload> createState() => _ImageUploadState();
}

class _ImageUploadState extends State<ImageUpload> {
  Image? _image;
  bool _hovered = false;
  void Function(XFile? image)? _onImageChanged;
  final double size = 150;

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
            onHover: (hovered) => setState(() => _hovered = hovered),
            child: Stack(
              fit: StackFit.expand,
              children: [
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
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 0.7),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 2,
                            )
                          ],
                        ),
                        width: size,
                        height: 40,
                        child: const Center(
                          child: Text(
                            "Set group image",
                            style: TextStyle(
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
    _onImageChanged = widget.onImageChanged;
  }

  Future<void> _selectFile() async {
    try {
      final bool? newImageSelected = await _showImageChangeDialog();
      if (newImageSelected is! bool) {
        return;
      }
      if (!newImageSelected) {
        setState(() => _image = null);
        return;
      }
      final XFile? input =
          await ImagePicker().pickImage(source: ImageSource.gallery);
      if (input is XFile) {
        Uint8List bytes = await input.readAsBytes();
        setState(() => _image = Image.memory(bytes));
      }
      _onImageChanged?.call(input);
    } catch (error) {
      _showErrorSnackBar();
    }
  }

  void _showErrorSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        backgroundColor: Colors.red,
        content: Center(
          child: Text(
            "Could not select image. Please try again",
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }

  Future<bool?> _showImageChangeDialog() async {
    return await showDialog(
      context: context,
      builder: (context) => ImageChangeDialog(
        onSetImagePressed: () => context.pop(true),
        onRemoveImagePressed: () => context.pop(false),
        onCancelPressed: () => context.pop(),
        showRemoveOption: _image is Image,
      ),
    );
  }
}
