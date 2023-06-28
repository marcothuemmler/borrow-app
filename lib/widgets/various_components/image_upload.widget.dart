import "package:borrow_app/common/enums/image_upload.enum.dart";
import "package:borrow_app/widgets/dialogs/image_change_dialog.dart";
import "package:borrow_app/widgets/various_components/image_placeholder.widget.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:go_router/go_router.dart";
import "package:image_picker/image_picker.dart";
import "package:transparent_image/transparent_image.dart";

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
  late final String _text;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Center(
          child: SizedBox(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
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
                  const ImagePlaceholder(
                    iconData: Icons.cloud_upload_outlined,
                    size: 100,
                  ),
                  FadeInImage(
                    fadeInDuration: const Duration(milliseconds: 250),
                    image: _image?.image ?? MemoryImage(kTransparentImage),
                    fit: BoxFit.cover,
                    placeholder: MemoryImage(kTransparentImage),
                  ),
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
                          width: constraints.maxWidth,
                          height: 40,
                          child: Center(
                            child: Text(
                              _text,
                              style: const TextStyle(
                                color: Colors.black54,
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
        );
      },
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
      final ImageChangeSelectionType? newImageSelected =
          await _showImageChangeDialog();
      switch (newImageSelected) {
        case ImageChangeSelectionType.uploadFromGallery:
          final XFile? input = await ImagePicker().pickImage(
            source: ImageSource.gallery,
          );
          _initImage(image: input);
          _onImageChanged?.call(input);
          return;
        case ImageChangeSelectionType.uploadFromCamera:
          final XFile? input = await ImagePicker().pickImage(
            source: ImageSource.camera,
          );
          _initImage(image: input);
          _onImageChanged?.call(input);
          return;
        case ImageChangeSelectionType.deleteExisting:
          setState(() => _image = null);
          _onImageChanged?.call(null);
          return;
        case ImageChangeSelectionType.noneSelected:
        case null:
          return;
      }
    } catch (error) {
      _showErrorSnackBar();
    }
  }

  void _showErrorSnackBar() {
    if (mounted) {
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
  }

  Future<ImageChangeSelectionType?> _showImageChangeDialog() async {
    return await showDialog<ImageChangeSelectionType>(
      context: context,
      builder: (BuildContext context) => ImageChangeDialog(
        onSelectImageFromCameraPressed: () =>
            context.pop(ImageChangeSelectionType.uploadFromCamera),
        onSelectImageFromGalleryPressed: () =>
            context.pop(ImageChangeSelectionType.uploadFromGallery),
        onRemoveImagePressed: () =>
            context.pop(ImageChangeSelectionType.deleteExisting),
        onCancelPressed: () =>
            context.pop(ImageChangeSelectionType.noneSelected),
        showRemoveOption: _image is Image,
      ),
    );
  }
}
