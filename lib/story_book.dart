import 'package:flutter/material.dart';
import 'package:ui_kit/ui_component/app_input.dart';
import 'package:ui_kit/ui_kit.dart';

class StoryBook extends StatefulWidget {
  const StoryBook({super.key});

  @override
  State<StoryBook> createState() => _StoryBookState();
}

DateTime? _selectedDate;

class _StoryBookState extends State<StoryBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Title 1 - Semibold ', style: AppTextstyle.title1Semibold),
              Text('Title 1 -  ExtraBold', style: AppTextstyle.title1ExtraBold),
              Text('Title 2 -  Regular ', style: AppTextstyle.title2Regular),
              Text('Title 2 - Semibold ', style: AppTextstyle.title2Semibold),
              Text(
                'Title 2 -  ExtraBold ',
                style: AppTextstyle.title2ExtraBold,
              ),
              Text('Title 3 -  Regular', style: AppTextstyle.title3Regular),
              Text('Title 3 -  Medium ', style: AppTextstyle.title3Medium),
              Text('Title 3 -  Semibold', style: AppTextstyle.title3Semibold),
              Text('Headline -  Regular', style: AppTextstyle.headlineRegular),
              Text('Headline -  Medium', style: AppTextstyle.headlineMedium),
              Text('Text -  Regular', style: AppTextstyle.textRegular),
              Text('Text -  Medium ', style: AppTextstyle.textMedium),
              Text('Caption -  Regular', style: AppTextstyle.captionRegular),
              Text('Caption -  Semibold', style: AppTextstyle.captionSemibold),
              Text('Caption 2 -  Regular', style: AppTextstyle.caption2Regular),
              Text('Caption 2 -  Bold', style: AppTextstyle.caption2Bold),
              SizedBox(height: 10),
              Wrap(
                children: [
                  _color("Accent", AppColor.accent),
                  _color("Accent inactive", AppColor.accentInactive),
                  _color("Black", AppColor.black),
                  _color("White", AppColor.white),
                  _color("Error", AppColor.error),
                  _color("Success", AppColor.success),
                  _color("Инпут бг", AppColor.inputBg),
                  _color("Инпут строк", AppColor.inputStroke),
                  _color("Инпут иконки", AppColor.inputIcon),
                  _color("Плейсхолдер", AppColor.placeholder),
                  _color("Дескрипшн", AppColor.description),
                  _color("Кард строк", AppColor.cardStroke),
                ],
              ),
              Wrap(
                children: [
                  AppIcon.check(),
                  AppIcon.chevronDown(),
                  AppIcon.chevronLeft(),
                  AppIcon.close(),
                  AppIcon.delete(),
                  AppIcon.dismiss(),
                  AppIcon.download(),
                  AppIcon.eyeOff(),
                  AppIcon.eyeOnn(),
                  AppIcon.fileText(),
                  AppIcon.filter(),
                  AppIcon.map(),
                  AppIcon.messageCircle(),
                  AppIcon.mic(),
                  AppIcon.minus(),
                  AppIcon.moreHorizontal(),
                  AppIcon.paperclip(),
                  AppIcon.plus(),
                  AppIcon.search(),
                  AppIcon.send(),
                  AppIcon.shoppingCart(),
                ],
              ),
              ui.bigButton.accent(
                title: "Подтвердить",
                onTap: () {},
                isActive: true,
              ),
              SizedBox(height: 5),
              ui.bigButton.accent(
                title: "Подтвердить",
                onTap: () {},
                isActive: false,
              ),
              SizedBox(height: 5),
              ui.bigButton.noAccent(title: "Подтвердить", onTap: () {}),
              SizedBox(height: 5),
              ui.bigButton.unAccent(title: "Подтвердить", onTap: () {}),
              SizedBox(height: 5),
              // small
              ui.smallButton.accent(
                title: "Добавить",
                onTap: () {},
                isActive: true,
              ),
              SizedBox(height: 5),
              ui.smallButton.delButton(title: "Убрать ", onTap: () {}),
              SizedBox(height: 5),
              ui.smallButton.accent(
                title: "Добавить",
                onTap: () {},
                isActive: false,
              ),

              SizedBox(height: 5),
              ui.smallButton.unAccent(title: "Подтвердить", onTap: () {}),
              SizedBox(height: 5),
              // chips
              ui.chipsButton.accent(title: "Популярные", onTap: () {}),

              SizedBox(height: 5),
              ui.chipsButton.unAccent(title: "Популярные", onTap: () {}),
              // Cart Button
              SizedBox(height: 20),
              ui.cardButton.accent(price: 500, onTap: () {}),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    AppInput(hintText: 'Введите имя'),
                    SizedBox(height: 20),
                    AppInput(value: 'Иван'),
                    SizedBox(height: 20),
                    AppInput(labelText: 'Имя', hintText: 'Введите имя'),
                    SizedBox(height: 20),
                    AppInput(
                      hintText: 'Имя',
                      isError: true,
                      helpText: 'Введите ваше имя',
                    ),
                    SizedBox(height: 20),
                    AppInput(labelText: 'Имя', hintText: 'Введите имя'),
                    SizedBox(height: 20),
                    AppInput(labelText: 'Имя', value: 'Введите имя'),
                    SizedBox(height: 20),
                    AppInput(isPassword: true, value: 'Введите имя'),
                    SizedBox(height: 20),
                    AppInput(hintText: '--.--.----', ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _color(String name, Color color) {
    return Column(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        ),
        SizedBox(
          height: 60,
          width: 60,
          child: Text(name, textAlign: TextAlign.center, maxLines: 2),
        ),
      ],
    );
  }
}
