import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

enum Gender { male, famele }

class AppInputGender extends StatelessWidget {
  final String? labelText;
  final Gender? value;
  final ValueChanged<Gender?>? onChanges;
  const AppInputGender({super.key, this.value, this.onChanges, this.labelText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null) ...[
          Text(
            labelText!,
            style: AppTextstyle.captionRegular.copyWith(
              color: AppColor.description,
            ),
          ),
          SizedBox(height: 4),
        ],
        DropdownButtonFormField<Gender>(
          initialValue: value,
          style: AppTextstyle.textRegular.copyWith(color: AppColor.black),
          decoration: InputDecoration(
            hintStyle: AppTextstyle.textRegular.copyWith(
              color: AppColor.caption,
            ),
            hintText: 'Выберите пол',
            suffixIcon: AppIcon.chevronDown(),
            contentPadding: EdgeInsets.all(14),
            filled: true,
            fillColor: AppColor.inputBg,
            border: _border(),
            enabledBorder: _border(),
            focusedBorder: _border(),
          ),
          items: [
            DropdownMenuItem(value: Gender.male, child: Text('Мужской')),
            DropdownMenuItem(value: Gender.famele, child: Text('Женский')),
          ],
          onChanged: onChanges,
        ),
      ],
    );
  }

  InputBorder _border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: AppColor.inputStroke, width: 1),
    );
  }
}
