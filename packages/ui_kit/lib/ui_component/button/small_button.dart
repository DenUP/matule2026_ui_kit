import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class SmallButton {
  ButtonStyle _buttonStyle() {
    return ElevatedButton.styleFrom(
      fixedSize: Size(96, 40),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(10),
      ),
      shadowColor: Colors.transparent,
    );
  }

  Widget accent({
    required String title,
    VoidCallback? onTap,
    bool isActive = true,
  }) {
    return ElevatedButton(
      onPressed: isActive ? onTap : null,
      style: _buttonStyle().copyWith(
        backgroundColor: WidgetStateProperty.resolveWith<Color>(
          (state) => isActive ? AppColor.accent : AppColor.accentInactive,
        ),
        foregroundColor: WidgetStateProperty.all(Colors.white),
      ),
      child: _text(title),
    );
  }

  Widget delButton({required String title, VoidCallback? onTap}) {
    return ElevatedButton(
      onPressed: onTap,
      style: _buttonStyle().copyWith(
        backgroundColor: WidgetStateProperty.all(Colors.white),
        foregroundColor: WidgetStateProperty.all(AppColor.accent),
        side: WidgetStateProperty.all(
          BorderSide(color: AppColor.accent, width: 1),
        ),
      ),
      child: _text(title),
    );
  }

  Widget unAccent({required String title, VoidCallback? onTap}) {
    return ElevatedButton(
      onPressed: onTap,
      style: _buttonStyle().copyWith(
        backgroundColor: WidgetStateProperty.all(AppColor.inputBg),
        foregroundColor: WidgetStateProperty.all(AppColor.black),
      ),
      child: _text(title),
    );
  }

  Widget _text(String title) {
    return Text(title, style: AppTextstyle.captionSemibold);
  }
}
