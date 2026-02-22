import 'package:flutter/material.dart';
import 'package:ui_kit/app_color.dart';
import 'package:ui_kit/app_textstyle.dart';
import 'package:ui_kit/extensions/data_extensions.dart';

class AppInputDate extends StatelessWidget {
  final DateTime? value;
  final ValueChanged<DateTime?>? onChanges;
  const AppInputDate({super.key, this.value, this.onChanges});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () async {
        final data = await showDatePicker(
          context: context,

          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
          initialDate: value ?? DateTime.now(),
        );
        if (data != null) {
          return onChanges?.call(data);
        }
      },
      readOnly: true,
      controller: TextEditingController(text: value?.toddMMyyyy()),
      style: AppTextstyle.textRegular.copyWith(color: AppColor.black),
      decoration: InputDecoration(
        hintStyle: AppTextstyle.textRegular.copyWith(color: AppColor.caption),
        hintText: '--.--.----',
        contentPadding: EdgeInsets.all(14),
        filled: true,
        fillColor: AppColor.inputBg,
        border: _border(),
        enabledBorder: _border(),
        focusedBorder: _border(),
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
