import 'package:weteka/presentation/screen/utils/app_colors.dart';

import '../index.dart';

class ElevatedButtonCust extends StatelessWidget {
  const ElevatedButtonCust({
    Key? key,
    this.tit,
    this.sizfo,
    this.onNavigator,
    this.h,
    this.w,
    this.circleBut,
    this.isColor = true,
    this.color,
    this.colorTit,
    this.haveImg = false,
    this.img,
    this.haveIcon = false, this.icon,
  }) : super(key: key);
  final String? tit;
  final IconData? icon;
  final String? img;
  final double? sizfo;
  final double? h;
  final double? w;
  final double? circleBut;
  final bool? isColor;
  final bool? haveImg;
  final bool? haveIcon;
  final Color? color;
  final Color? colorTit;
  final void Function()? onNavigator;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(w!, h!),
        elevation: 0,
        primary: isColor! ? hexaCodeToColor(AppColor.primaryColor) : color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(circleBut!),
        ),
      ),
      onPressed: onNavigator,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          haveImg!
              ? Image.asset(img!)
              : haveIcon!
                  ?  Icon(icon,color: Colors.black,)
                  : const Text(''),
          const SizedBox(
            width: 10,
          ),
          Text(
            tit!,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: sizfo,
                color: isColor! ? null : colorTit),
          ),
        ],
      ),
    );
  }
}
