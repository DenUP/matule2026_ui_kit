import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class ChipsButton {
  ButtonStyle _buttonStyle() {
    return ElevatedButton.styleFrom(
      fixedSize: Size(129, 48),
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 14),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(10),
      ),
      shadowColor: Colors.transparent,
    );
  }

  Widget accent({required String title, VoidCallback? onTap}) {
    return ElevatedButton(
      onPressed: onTap,
      style: _buttonStyle().copyWith(
        backgroundColor: WidgetStateProperty.all(AppColor.accent),
        foregroundColor: WidgetStateProperty.all(Colors.white),
      ),
      child: _text(title),
    );
  }

  Widget unAccent({required String title, VoidCallback? onTap}) {
    return ElevatedButton(
      onPressed: onTap,
      style: _buttonStyle().copyWith(
        backgroundColor: WidgetStateProperty.all(AppColor.inputBg),
        foregroundColor: WidgetStateProperty.all(AppColor.description),
      ),
      child: _text(title),
    );
  }

  Widget _text(String title) {
    return Text(title, style: AppTextstyle.textMedium);
  }
}
