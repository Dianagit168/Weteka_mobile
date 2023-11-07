import '../../../index.dart';

class SchoolCourse extends StatelessWidget {
  const SchoolCourse({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Course(
        tit: 'Contents',
        isTit: false,
        islike: false,
      ),
    );
  }
}
