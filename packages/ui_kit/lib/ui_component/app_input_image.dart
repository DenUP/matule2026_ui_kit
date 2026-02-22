import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ui_kit/app_color.dart';
import 'package:ui_kit/app_textstyle.dart';

class AppInputImage extends StatefulWidget {
  final File? path;
  const AppInputImage({super.key, this.path});

  @override
  State<AppInputImage> createState() => _AppInputImageState();
}

class _AppInputImageState extends State<AppInputImage> {
  File? image;

  Future<void> getPicker() async {
    final picker = ImagePicker();
    final response = await picker.pickImage(source: ImageSource.gallery);
    if (response != null) {
      setState(() {
        image = File(response.path);
      });
    }
  }

  @override
  void initState() {
    image = widget.path;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: image == null ? 48 : 333,
      child: image != null
          ? Container(
              padding: EdgeInsets.symmetric(horizontal: 37, vertical: 26),
              width: double.infinity,
              height: image == null ? 48 : 333,
              decoration: BoxDecoration(
                color: AppColor.inputBg,
                borderRadius: BorderRadiusDirectional.circular(10),
              ),
              child: Image.file(image!, fit: BoxFit.cover),
            )
          : TextFormField(
              onTap: getPicker,
              readOnly: true,
              style: AppTextstyle.textRegular.copyWith(color: AppColor.black),
              decoration: InputDecoration(
                hintStyle: AppTextstyle.textRegular.copyWith(
                  color: AppColor.caption,
                ),
                hintText: 'Загрузите картинку',
                contentPadding: EdgeInsets.all(14),
                filled: true,
                fillColor: AppColor.inputBg,
                border: _border(),
                enabledBorder: _border(),
                focusedBorder: _border(),
              ),
            ),
    );
  }

  InputBorder _border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: AppColor.inputStroke, width: 1),
    );
  }
}
