import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_kit/ui_kit.dart';

class AppPincode {
  Widget create({String? number, required Function(String)? onChanged}) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: AppColor.inputBg,
        borderRadius: BorderRadius.circular(10),

        border: Border.all(color: AppColor.inputStroke),
      ),
      child: Center(
        child: TextFormField(
          textAlign: TextAlign.center,

          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
          controller: TextEditingController(text: number),

          onChanged: onChanged,
          style: AppTextstyle.textRegular.copyWith(color: AppColor.black),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            filled: false,
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
