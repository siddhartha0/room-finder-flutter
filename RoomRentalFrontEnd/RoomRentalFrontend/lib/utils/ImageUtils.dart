import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ImageUtils {
  select() async {
    final file = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (file != null) {
      return File(file.path);
      print("Sucess");
    }
    print("No image found");
  }
}
