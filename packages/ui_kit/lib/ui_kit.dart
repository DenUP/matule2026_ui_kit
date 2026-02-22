import 'package:ui_kit/ui_component/app_input.dart';
import 'package:ui_kit/ui_component/button/big_button.dart';
import 'package:ui_kit/ui_component/button/cart_button.dart';
import 'package:ui_kit/ui_component/button/chips_button.dart';
import 'package:ui_kit/ui_component/button/small_button.dart';

export 'app_textstyle.dart';
export 'app_icon.dart';
export 'app_color.dart';

class UiKit {
  BigButton get bigButton => BigButton();
  SmallButton get smallButton => SmallButton();
  ChipsButton get chipsButton => ChipsButton();
  CartButton get cardButton => CartButton();
}

final ui = UiKit();
