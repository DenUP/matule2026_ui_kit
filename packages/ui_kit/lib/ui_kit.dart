import 'package:ui_kit/ui_component/app_input.dart';
import 'package:ui_kit/ui_component/app_input_date.dart';
import 'package:ui_kit/ui_component/app_input_image.dart';
import 'package:ui_kit/ui_component/app_pincode.dart';
import 'package:ui_kit/ui_component/button/big_button.dart';
import 'package:ui_kit/ui_component/button/cart_button.dart';
import 'package:ui_kit/ui_component/button/chips_button.dart';
import 'package:ui_kit/ui_component/button/order_button.dart';
import 'package:ui_kit/ui_component/button/small_button.dart';
import 'package:ui_kit/ui_component/card/card.dart';
import 'package:ui_kit/ui_component/card/card_background.dart';
import 'package:ui_kit/ui_component/card/order_card.dart';
import 'package:ui_kit/ui_component/controller/counter.dart';
import 'package:ui_kit/ui_component/controller/toggle.dart';

export 'app_textstyle.dart';
export 'app_icon.dart';
export 'app_color.dart';

class UiKit {
  BigButton get bigButton => BigButton();
  SmallButton get smallButton => SmallButton();
  ChipsButton get chipsButton => ChipsButton();
  CartButton get cardButton => CartButton();
  Counter get counter => Counter();
  CardBackground get cardBackground => CardBackground();
  Card get card => Card();
  AppPincode get apiPincode => AppPincode();
  OrderCard get orderCard => OrderCard();
  OrderButton get orderButton => OrderButton();
}

final ui = UiKit();
