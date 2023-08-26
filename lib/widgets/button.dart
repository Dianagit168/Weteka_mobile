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
  }) : super(key: key);
  final String? tit;
  final String? img;
  final double? sizfo;
  final double? h;
  final double? w;
  final double? circleBut;
  final bool? isColor;
  final bool? haveImg;
  final Color? color;
  final Color? colorTit;
  final void Function()? onNavigator;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(w!, h!),
        elevation: 0,
        primary: isColor! ? const Color.fromARGB(255, 0, 102, 255) : color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(circleBut!),
        ),
      ),
      onPressed: onNavigator,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          haveImg! ? Image.asset(img!) : const Text(''),
          SizedBox(
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
