import 'package:weteka/index.dart';

import 'bodycoursepage.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: wetekaAppBar(context, isSearch: false),
        body: const CoursePageBody(),
      ),
    );
  }
}