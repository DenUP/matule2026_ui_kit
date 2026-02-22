import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

abstract class AppIcon {
  static SvgPicture check({double? size, Color? color}) =>
      _icon('check', size: size, color: color);
  static SvgPicture chevronDown({double? size, Color? color}) =>
      _icon('chevron-down', size: size, color: color);
  static SvgPicture chevronLeft({double? size, Color? color}) =>
      _icon('chevron-left', size: size, color: color);
  static SvgPicture close({double? size, Color? color}) =>
      _icon('close', size: size, color: color);
  static SvgPicture delete({double? size, Color? color}) =>
      _icon('delete', size: size, color: color);
  static SvgPicture dismiss({double? size, Color? color}) =>
      _icon('dismiss', size: size, color: color);

  static SvgPicture download({double? size, Color? color}) =>
      _icon('download', size: size, color: color);
  static SvgPicture eyeOff({double? size, Color? color}) =>
      _icon('eyeOff', size: size, color: color);
  static SvgPicture eyeOnn({double? size, Color? color}) =>
      _icon('eyeOnn', size: size, color: color);
  static SvgPicture fileText({double? size, Color? color}) =>
      _icon('file-text', size: size, color: color);
  static SvgPicture filter({double? size, Color? color}) =>
      _icon('filter', size: size, color: color);
  static SvgPicture map({double? size, Color? color}) =>
      _icon('map', size: size, color: color);
  static SvgPicture messageCircle({double? size, Color? color}) =>
      _icon('message-circle', size: size, color: color);
  static SvgPicture mic({double? size, Color? color}) =>
      _icon('mic', size: size, color: color);
  static SvgPicture minus({double? size, Color? color}) =>
      _icon('minus', size: size, color: color);
  static SvgPicture moreHorizontal({double? size, Color? color}) =>
      _icon('more-horizontal', size: size, color: color);
  static SvgPicture paperclip({double? size, Color? color}) =>
      _icon('paperclip', size: size, color: color);
  static SvgPicture plus({double? size, Color? color}) =>
      _icon('plus', size: size, color: color);
  static SvgPicture search({double? size, Color? color}) =>
      _icon('search', size: size, color: color);
  static SvgPicture send({double? size, Color? color}) =>
      _icon('send', size: size, color: color);
  static SvgPicture shoppingCart({double? size, Color? color}) =>
      _icon('shopping-cart', size: size, color: color);
}

SvgPicture _icon(String name, {double? size, Color? color}) {
  return SvgPicture.asset(
    "assets/icon/$name.svg",
    width: size,
    height: size,
    package: 'ui_kit',
    colorFilter: color != null
        ? ColorFilter.mode(color, BlendMode.srcATop)
        : null,
  );
}
