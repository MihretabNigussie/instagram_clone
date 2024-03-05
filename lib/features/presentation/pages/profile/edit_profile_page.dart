import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram_clone/core/constants/theme_constants.dart';
import 'package:instagram_clone/features/presentation/widgets/profile_form_widget.dart';
import 'package:instagram_clone/features/presentation/widgets/profile_widget.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  TextEditingController? _nameController;
  TextEditingController? _usernameController;
  TextEditingController? _websiteController;
  TextEditingController? _bioController;

  @override
  void initState() {
    _nameController = TextEditingController(text: "name");
    _usernameController = TextEditingController(text: "username");
    _websiteController = TextEditingController(text: "website");
    _bioController = TextEditingController(text: "bio");
    super.initState();
  }

  bool _isUpdating = false;

  File? _image;

  Future selectImage() async {
    try {
      final pickedFile =
          await ImagePicker.platform.getImage(source: ImageSource.gallery);

      setState(() {
        if (pickedFile != null) {
          _image = File(pickedFile.path);
        } else {
          print("no image has been selected");
        }
      });
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile"),
        leading: GestureDetector(
            onTap: () => context.pop(),
            child: const Icon(
              Icons.close,
              size: 32,
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: GestureDetector(
              onTap: _updateUserProfileData,
              child: const Icon(
                Icons.done,
                color: blueColor,
                size: 32,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: profileWidget(_image == null
                        ? "assets/profile_default.png"
                        : _image!),
                  ),
                ),
              ),
              sizeVer(15),
              Center(
                child: GestureDetector(
                  onTap: selectImage,
                  child: const Text(
                    "Change profile photo",
                    style: TextStyle(
                        color: blueColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              sizeVer(15),
              ProfileFormWidget(title: "Name", controller: _nameController),
              sizeVer(15),
              ProfileFormWidget(
                  title: "Username", controller: _usernameController),
              sizeVer(15),
              ProfileFormWidget(
                  title: "Website", controller: _websiteController),
              sizeVer(15),
              ProfileFormWidget(title: "Bio", controller: _bioController),
              sizeVer(10),
              _isUpdating == true
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Please wait...",
                          style: TextStyle(color: Colors.white),
                        ),
                        sizeHor(10),
                        const CircularProgressIndicator()
                      ],
                    )
                  : const SizedBox(
                      width: 0,
                      height: 0,
                    )
            ],
          ),
        ),
      ),
    );
  }

  _updateUserProfileData() {
    setState(() => _isUpdating = true);
    if (_image == null) {
      _updateUserProfile("");
    } else {
      _updateUserProfile("");
    }
  }

  _updateUserProfile(String profileUrl) {}

  _clear() {
    setState(() {
      _isUpdating = false;
      _usernameController!.clear();
      _bioController!.clear();
      _websiteController!.clear();
      _nameController!.clear();
    });
    Navigator.pop(context);
  }
}
