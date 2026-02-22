import 'package:flutter/material.dart';
import 'package:ui_kit/app_color.dart';

class CardBackground {
  Widget base({Widget? child}) {
    return Container(
      width: 335,
      height: 138,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColor.white,

        borderRadius: BorderRadius.circular(12),
        border: Border.fromBorderSide(
          BorderSide(color: AppColor.divider, width: 1),
        ),
        boxShadow: [BoxShadow(color: Color(0x99E4E8F5), blurRadius: 20)],
      ),
      child: child,
    );
  }
}
