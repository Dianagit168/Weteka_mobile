import '../index.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    this.title,
    this.isFontSize = true,
    this.fontSize,
    this.color,
    this.isBold = true,
    this.isOverflow = true,
    this.maxLine = 2,
    this.fontWeight = FontWeight.normal,
  }) : super(key: key);
  final String? title;
  final bool? isFontSize;
  final bool? isBold;
  final double? fontSize;
  final Color? color;
  final int? maxLine;
  final FontWeight? fontWeight;

  final bool? isOverflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: isOverflow! ? maxLine : 500,
      overflow: isOverflow! ? TextOverflow.ellipsis : null,
      title!,
      style: TextStyle(
          fontWeight: isBold! ? FontWeight.bold : fontWeight,
          fontSize: isFontSize! ? null : fontSize,
          color: isFontSize! ? const Color.fromARGB(255, 2, 28, 60) : color!),
    );
  }
}
