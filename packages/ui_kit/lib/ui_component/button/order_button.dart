import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class OrderButton {
  Widget accent({required String title, VoidCallback? onTap}) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(144, 48),
        padding: EdgeInsets.symmetric(horizontal: 26, vertical: 13),
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(10),
        ),
        backgroundColor: AppColor.inputBg,
        foregroundColor: AppColor.black,
      ),
      child: _text(title),
    );
  }

  Widget close({required String title, VoidCallback? onTap}) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(303, 48),
        padding: EdgeInsets.symmetric(horizontal: 120, vertical: 13),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(10),
        ),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        foregroundColor: AppColor.error,
        side: BorderSide(color: AppColor.error, width: 1),
      ),
      child: _text(title),
    );
  }

  Widget _text(String title) {
    return Text(title, style: AppTextstyle.textRegular);
  }
}
