import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/image_utils.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({super.key});

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  Uint8List? _file;
  _selectImage(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) => SimpleDialog(
              title: Text('Create a Post'),
              children: [
                SimpleDialogOption(
                  padding: EdgeInsets.all(20),
                  child: Text('Take a photo'),
                  onPressed: () async {
                    Navigator.of(context).pop();
                    Uint8List file = await pickImage(ImageSource.camera);
                    setState(() {
                      _file = file;
                    });
                  },
                ),
                SimpleDialogOption(
                  padding: EdgeInsets.all(20),
                  child: Text('Choose from gallery'),
                  onPressed: () async {
                    Navigator.of(context).pop();
                    Uint8List file = await pickImage(ImageSource.gallery);
                    setState(() {
                      _file = file;
                    });
                  },
                ),
                SimpleDialogOption(
                  padding: EdgeInsets.all(20),
                  child: Text('Cancel'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ));
  }

  clearImage() {
    setState(() {
      _file = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _file == null
        ? Center(
            child: InkWell(
              onTap: () {
                _selectImage(context);
              },
              child: Icon(
                Icons.upload_outlined,
                size: 50,
              ),
            ),
          )
        : Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () => clearImage(),
              ),
            ),
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const LinearProgressIndicator(
                    backgroundColor: Colors.transparent,
                    color: Colors.green,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.width * 0.75,
                        child: AspectRatio(
                          aspectRatio: 487 / 451,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: MemoryImage(_file!),
                                fit: BoxFit.fill,
                                // alignment: FractionalOffset.topCenter,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ]),
          );
  }
}
