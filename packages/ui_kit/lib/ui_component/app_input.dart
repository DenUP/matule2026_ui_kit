import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class AppInput extends StatefulWidget {
  final String? hintText;
  final String? value;
  final String? labelText;
  final bool isError;
  final bool isPassword;
  final String? helpText;

  const AppInput({
    super.key,
    this.hintText,
    this.value,
    this.labelText,
    this.isError = false,
    this.isPassword = false,
    this.helpText,
  });

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  late TextEditingController _controller;
  bool _isAcitve = false;
  bool _showPassword = false;

  @override
  void initState() {
    _controller = TextEditingController(text: widget.value);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText != null) ...[
          Text(
            widget.labelText!,
            style: AppTextstyle.captionRegular.copyWith(
              color: AppColor.description,
            ),
          ),
          SizedBox(height: 8),
        ],
        SizedBox(
          height: 48,
          child: FocusScope(
            child: Focus(
              onFocusChange: (value) => setState(() {
                _isAcitve = value;
              }),
              child: TextFormField(
                controller: _controller,

                obscureText: widget.isPassword && !_showPassword,
                obscuringCharacter: '*',

                style: AppTextstyle.textRegular.copyWith(color: AppColor.black),
                decoration: InputDecoration(
                  suffixIcon: widget.isPassword
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              _showPassword = !_showPassword;
                            });
                          },
                          icon: _showPassword
                              ? AppIcon.eyeOff(color: AppColor.icons)
                              : AppIcon.eyeOnn(color: AppColor.icons),
                        )
                      : null,
                  hintStyle: AppTextstyle.textRegular.copyWith(
                    color: AppColor.caption,
                  ),
                  hintText: widget.hintText,
                  contentPadding: EdgeInsets.all(14),
                  filled: true,
                  fillColor: widget.isError
                      ? Color(0x1AFD3535)
                      : AppColor.inputBg,
                  border: _border(),
                  enabledBorder: _border(),
                  focusedBorder: _border(),
                  errorBorder: _border(),
                ),
              ),
            ),
          ),
        ),
        if (widget.helpText != null) ...[
          SizedBox(height: 8),
          Text(
            widget.helpText!,
            style: AppTextstyle.captionRegular.copyWith(color: AppColor.error),
          ),
        ],
      ],
    );
  }

  InputBorder _border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: _colorBorder(), width: 1),
    );
  }

  Color _colorBorder() {
    if (_isAcitve) {
      return AppColor.accent;
    }
    if (widget.isError) {
      return AppColor.error;
    }
    return AppColor.inputBg;
  }
}
