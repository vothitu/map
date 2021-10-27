import 'dart:io';
import 'package:dtumaps/consts/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ProfileWidget extends StatefulWidget {
  final String imagePath;
  final bool isEdit;
  final VoidCallback onClicked;

  const ProfileWidget({
    Key? key,
    required this.imagePath,
    this.isEdit = false,
    required this.onClicked,
  }) : super(key: key);

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  File _pickedImage = new File('');

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;
    return Center(
        child: Stack(children: [
      buildImage(),
      Positioned(
          bottom: 0,
          right: 0,
          child: buildCircle(
            color: Colors.white,
            all: 2,
            child: buildCircle(
              color: color,
              all: 0,
              child: IconButton(
                icon: Icon(
                  widget.isEdit ? Icons.add_a_photo : Icons.edit,
                  color: Colors.white,
                  size: 25,
                ),
                onPressed: () {
                  _showPickOptionsDialog(context);
                },
              ),
            ),
          ))
    ]));
  }

  Widget buildImage() {
    if (_pickedImage.path == '')
      return CircleAvatar(
        radius: 80,
        backgroundImage: NetworkImage(widget.imagePath),
      );
    else
      return CircleAvatar(
        radius: 80,
        backgroundImage: FileImage(_pickedImage),
      );
  }

  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          color: color,
          child: child,
        ),
      );

  void _showPickOptionsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        contentPadding: EdgeInsets.all(8),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: Text(
                "Ảnh từ thư viện",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                _loadPicker(ImageSource.gallery);
              },
            ),
            Divider(
              color: Colors.black12,
              height: 1,
              thickness: 1,
              endIndent: 30,
              indent: 15,
            ),
            ListTile(
              title: Text(
                "Chụp ảnh mới",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                _loadPicker(ImageSource.camera);
              },
            )
          ],
        ),
      ),
    );
  }

  _loadPicker(ImageSource source) async {
    final picker = ImagePicker();
    XFile? picked = (await picker.pickImage(source: source));
    if (picked != null) {
      _cropImage(File(picked.path));
    }
    Navigator.pop(context);
  }

  _cropImage(File picked) async {
    File cropped = (await ImageCropper.cropImage(
      androidUiSettings: AndroidUiSettings(
        statusBarColor: Color(0xff20242f),
        toolbarColor: Color(0xff20242f),
        toolbarTitle: "Crop Image",
        toolbarWidgetColor: Colors.white,
        backgroundColor: Colors.white,
        dimmedLayerColor: Color(0xff454E66),
      ),
      sourcePath: picked.path,
      aspectRatioPresets: [
        CropAspectRatioPreset.original,
        CropAspectRatioPreset.ratio16x9,
        CropAspectRatioPreset.ratio4x3,
      ],
      maxWidth: 800,
    )) as File;
    if (cropped != null) {
      setState(() {
        _pickedImage = cropped;
      });
    }
  }
}
