import 'package:weteka/index.dart';

class Contents extends StatelessWidget {
  const Contents({Key? key, this.content, this.index}) : super(key: key);
  final List<dynamic>? content;
  final int? index;

  @override
  Widget build(BuildContext context) {
    return CustomText(
      isOverflow: false,
      title: content![index!]['content'],
      isBold: false,
      isFontSize: false,
      fontSize: 13,
      color: const Color.fromARGB(227, 2, 28, 60),
    );
  }
}
