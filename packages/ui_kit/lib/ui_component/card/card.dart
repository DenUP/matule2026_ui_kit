import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class Card {
  Widget primary({
    required String title,
    required String category,
    required String price,
    required Widget button,
  }) {
    return ui.cardBackground.base(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              title,
              style: AppTextstyle.headlineMedium.copyWith(
                color: AppColor.black,
              ),
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category,
                    style: AppTextstyle.captionSemibold.copyWith(
                      color: Color(0xFF939396),
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    '$price ₽',
                    style: AppTextstyle.title3Semibold.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                ],
              ),
              Spacer(),
              button,
            ],
          ),
        ],
      ),
    );
  }

  Widget cart({
    required String title,
    required String price,
    required String count,
    required VoidCallback close,
    required Widget button,
  }) {
    return ui.cardBackground.base(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: AppTextstyle.headlineMedium.copyWith(
                    color: AppColor.black,
                  ),
                ),
              ),
              SizedBox(width: 8),
              IconButton(onPressed: close, icon: AppIcon.close()),
            ],
          ),
          Spacer(),
          Row(
            children: [
              Expanded(
                child: Text(
                  '$price ₽',
                  style: AppTextstyle.title3Medium.copyWith(
                    color: AppColor.black,
                  ),
                ),
              ),
              Text('$count  штук'),
              SizedBox(width: 42),
              button,
            ],
          ),
        ],
      ),
    );
  }
}
