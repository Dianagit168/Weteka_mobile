import '../index.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    this.title,
  }) : super(key: key);
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 2, 28, 60),
      ),
    );
  }
}
