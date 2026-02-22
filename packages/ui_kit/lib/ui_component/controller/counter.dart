import 'package:flutter/material.dart';
import 'package:ui_kit/app_color.dart';
import 'package:ui_kit/ui_kit.dart';

class Counter {
  Widget active({VoidCallback? onTapMinus, VoidCallback? onTapPlus}) {
    return _buildCounter(
      plusColor: AppColor.caption,
      minusColor: AppColor.caption,
      onTapMinus: onTapMinus ?? () {},
      onTapPlus: onTapPlus ?? () {},
    );
  }

  Widget noActive({VoidCallback? onTapMinus, VoidCallback? onTapPlus}) {
    return _buildCounter(
      plusColor: AppColor.caption,
      minusColor: AppColor.icons,
      onTapMinus: onTapMinus ?? () {},
      onTapPlus: onTapPlus ?? () {},
    );
  }

  Widget _buildCounter({
    required Color plusColor,
    required Color minusColor,
    required VoidCallback onTapMinus,
    required VoidCallback onTapPlus,
  }) {
    return Container(
      width: 64,
      height: 32,
      decoration: BoxDecoration(
        color: AppColor.inputBg,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child: IconButton(
              onPressed: onTapMinus,
              icon: AppIcon.minus(color: minusColor),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
            ),
          ),
          Container(
            height: 16,
            width: 1,
            decoration: BoxDecoration(
              color: AppColor.inputStroke,
              border: Border(
                bottom: BorderSide(color: AppColor.inputStroke, width: 1),
              ),
            ),
          ),
          Expanded(
            child: IconButton(
              onPressed: onTapPlus,
              icon: AppIcon.plus(color: plusColor),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
            ),
          ),
        ],
      ),
    );
  }
}
