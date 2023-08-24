import '../index.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    this.title,
    this.isFontSize = true,
    this.fontSize,
    this.color,
    this.isBold = true,
  }) : super(key: key);
  final String? title;
  final bool? isFontSize;
  final bool? isBold;
  final double? fontSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      style: TextStyle(
          fontWeight: isBold! ? FontWeight.bold : FontWeight.w500,
          fontSize: isFontSize! ? null : fontSize,
          color: isFontSize! ? const Color.fromARGB(255, 2, 28, 60) : color!),
    );
  }
}
