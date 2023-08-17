import '../index.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    this.title,
    this.isFontSize = true,
    this.fontSize,
  }) : super(key: key);
  final String? title;
  final bool? isFontSize;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: isFontSize! ? null : fontSize,
        color: const Color.fromARGB(255, 2, 28, 60),
      ),
    );
  }
}
