import 'package:flutter/material.dart';
import 'package:ui_kit/app_color.dart';
import 'package:ui_kit/app_icon.dart';
import 'package:ui_kit/app_textstyle.dart';
import 'package:ui_kit/ui_kit.dart';

class OrderCard {
  Widget base({
    required String numberZakaz,
    required String price,
    required String date,
    required String productOneTitle,
    required String productOnePrice,
    required String productTwoTitle,
    required String productTwoPrice,
    required VoidCallback chekOntap,
    required VoidCallback helpOntap,
    required VoidCallback closeOntap,
  }) {
    return Container(
      width: 335,
      height: 428,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColor.white,

        borderRadius: BorderRadius.circular(12),
        border: Border.fromBorderSide(
          BorderSide(color: AppColor.divider, width: 1),
        ),
        boxShadow: [BoxShadow(color: Color(0x99E4E8F5), blurRadius: 20)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Заказ № $numberZakaz',
                  style: AppTextstyle.title3Semibold.copyWith(
                    color: AppColor.black,
                  ),
                ),
              ),
              Text(
                '$price ₽',
                style: AppTextstyle.headlineRegular.copyWith(
                  color: AppColor.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                date,
                style: AppTextstyle.captionRegular.copyWith(
                  color: AppColor.caption,
                ),
              ),
              SizedBox(width: 8),
              Text(
                '•',
                style: AppTextstyle.captionRegular.copyWith(
                  color: AppColor.caption,
                ),
              ),
              SizedBox(width: 6),
              Text(
                'Оплачен',
                style: AppTextstyle.captionRegular.copyWith(
                  color: AppColor.success,
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppIcon.fileText(color: AppColor.caption, size: 20),
              SizedBox(width: 8),
              Text(
                "Посмотреть",
                style: AppTextstyle.headlineRegular.copyWith(
                  color: AppColor.caption,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Divider(color: AppColor.divider, height: 1),
          SizedBox(height: 16),
          Text(
            'Описания',
            style: AppTextstyle.headlineMedium.copyWith(
              color: AppColor.caption,
            ),
          ),
          SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  productOneTitle,
                  style: AppTextstyle.captionRegular.copyWith(
                    color: AppColor.black,
                  ),
                ),
              ),
              SizedBox(width: 7),
              Text(
                '1 х $productOnePrice ₽',
                style: AppTextstyle.captionRegular.copyWith(
                  color: AppColor.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  productTwoTitle,
                  style: AppTextstyle.captionRegular.copyWith(
                    color: AppColor.black,
                  ),
                ),
              ),
              SizedBox(width: 7),
              Text(
                '1 х $productTwoPrice ₽',
                style: AppTextstyle.captionRegular.copyWith(
                  color: AppColor.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 22),
          Divider(color: AppColor.divider, height: 1),
          SizedBox(height: 22),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ui.orderButton.accent(title: 'Чек покупки', onTap: chekOntap),
              ui.orderButton.accent(title: 'Помощь', onTap: helpOntap),
            ],
          ),
          SizedBox(height: 16),
          ui.orderButton.close(title: 'Закрыть', onTap: closeOntap),
        ],
      ),
    );
  }
}
