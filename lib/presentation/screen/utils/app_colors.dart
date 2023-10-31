import 'package:weteka/index.dart';
import 'package:weteka/presentation/screen/utils/app_utils.dart';

Color hexaCodeToColor(String hexaCode) {
  return Color(AppUtils.convertHexaColor(hexaCode));
}

class AppColor {
  static const String primaryColor = '#0073FF';
  static const String primaryColor1 = '#ff0073ff';
  static const String primaryColor30 = '#88b6ee';
  static const String primaryColor60 = '#990073ff';
  static const String blublack = '#021C3C';
  
}
