import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageUpload extends StatefulWidget {
  const ImageUpload({Key? key}) : super(key: key);

  @override
  State<ImageUpload> createState() => _ImageUploadState();
}

class _ImageUploadState extends State<ImageUpload> {
  Image? _image;
  bool _hovered = false;
  final double size = 150;

  void _selectFile() async {
    try {
      final input = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (input is XFile) {
        Uint8List image = await input.readAsBytes();
        setState(() => _image = Image.memory(image));
      }
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.red,
          content: Center(
            child: Text(
              "Could not select image, Please try again",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: size,
        width: size,
        child: ClipOval(
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
                  Image(image: _image!.image, fit: BoxFit.fill),
                AnimatedOpacity(
                  opacity: _hovered ? 1 : 0,
                  duration: const Duration(milliseconds: 150),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 5),
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
                            "Upload image",
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
}
