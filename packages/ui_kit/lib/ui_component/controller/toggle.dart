import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class Toggle extends StatefulWidget {
  final bool isActive;
  final ValueChanged<bool>? onChanges;
  const Toggle({super.key, required this.isActive, this.onChanges});

  @override
  State<Toggle> createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {
  late bool _isActive;

  @override
  void initState() {
    _isActive = widget.isActive;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        _isActive = !_isActive;
      }),
      child: Container(
        padding: EdgeInsets.all(2),
        width: 48,
        height: 28,
        decoration: BoxDecoration(
          color: _isActive ? AppColor.accent : AppColor.inputStroke,
          borderRadius: BorderRadius.circular(15),
        ),
        child: AnimatedAlign(
          duration: Duration(milliseconds: 100),
          alignment: _isActive ? Alignment.centerRight : Alignment.centerLeft,

          child: Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0x0F000000),
                  blurRadius: 1,
                  offset: Offset(0, 3),
                ),
                BoxShadow(
                  color: Color(0x26000000),
                  blurRadius: 3,
                  offset: Offset(0, 3),
                ),
              ],
              shape: BoxShape.circle,
              color: AppColor.white,
            ),
          ),
        ),
      ),
    );
  }
}
