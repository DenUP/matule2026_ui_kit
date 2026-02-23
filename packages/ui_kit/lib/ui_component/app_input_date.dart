import 'package:flutter/material.dart';
import 'package:ui_kit/app_color.dart';
import 'package:ui_kit/app_textstyle.dart';
import 'package:ui_kit/extensions/data_extensions.dart';
import 'package:ui_kit/ui_kit.dart';

class AppInputDate extends StatelessWidget {
  final DateTime? value;
  final ValueChanged<DateTime?>? onChanges;
  const AppInputDate({super.key, this.value, this.onChanges});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Дата',
          style: AppTextstyle.captionRegular.copyWith(
            color: AppColor.description,
          ),
        ),
        SizedBox(height: 4),
        TextFormField(
          onTap: () async => _onTap(context),
          readOnly: true,
          controller: TextEditingController(text: value?.toddMMyyyy()),
          style: AppTextstyle.textRegular.copyWith(color: AppColor.black),
          decoration: InputDecoration(
            hintStyle: AppTextstyle.textRegular.copyWith(
              color: AppColor.caption,
            ),
            hintText: '--.--.----',
            suffixIcon: IconButton(
              onPressed: () async => _onTap(context),
              icon: AppIcon.chevronDown(),
            ),
            contentPadding: EdgeInsets.all(14),
            filled: true,
            fillColor: AppColor.inputBg,
            border: _border(),
            enabledBorder: _border(),
            focusedBorder: _border(),
          ),
        ),
      ],
    );
  }

  Future<void> _onTap(BuildContext context) async {
    final data = await showDatePicker(
      context: context,

      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      initialDate: value ?? DateTime.now(),
    );
    if (data != null) {
      return onChanges?.call(data);
    }
  }

  InputBorder _border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: AppColor.inputStroke, width: 1),
    );
  }
}
