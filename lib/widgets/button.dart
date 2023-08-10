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
  }) : super(key: key);
  final String? tit;
  final double? sizfo;
  final double? h;
  final double? w;
  final double? circleBut;
  final bool? isColor;
  final void Function()? onNavigator;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(w!, h!),
        primary: isColor!
            ? const Color.fromARGB(255, 0, 102, 255)
            : const Color.fromARGB(255, 247, 84, 111),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(circleBut!),
        ),
      ),
      onPressed: onNavigator,
      child: Text(
        tit!,
        style: TextStyle(fontSize: sizfo),
      ),
    );
  }
}
