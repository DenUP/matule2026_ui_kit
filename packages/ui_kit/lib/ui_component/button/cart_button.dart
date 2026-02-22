import 'package:flutter/material.dart';
import 'package:ui_kit/app_color.dart';
import 'package:ui_kit/app_icon.dart';
import 'package:ui_kit/app_textstyle.dart';

class CartButton {
  ButtonStyle _buttonStyle() {
    return ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(horizontal: 15),
      shadowColor: Colors.transparent,
      fixedSize: Size(335, 56),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(10),
      ),
    );
  }

  Widget accent({required int price, required VoidCallback onTap}) {
    return ElevatedButton(
      onPressed: onTap,
      style: _buttonStyle().copyWith(
        backgroundColor: WidgetStateProperty.all(AppColor.accent),
        foregroundColor: WidgetStateProperty.all(Colors.white),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              AppIcon.shoppingCart(color: Colors.white),
              SizedBox(width: 16),
              _text("В корзину"),
            ],
          ),
          Row(children: [_text('$price'), SizedBox(width: 6), _text('₽')]),
        ],
      ),
    );
  }

  Widget _text(String text) {
    return Text(text, style: AppTextstyle.title3Semibold);
  }
}
