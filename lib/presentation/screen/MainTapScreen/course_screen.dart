import 'package:weteka/index.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: wetekaAppBar(context, isSearch: false),
        body: const SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SafeArea(
              child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Explore(
                    content: 'Find your course',
                  ),
                  Ctegory(),
                  Course(
                    tit: 'Courses',
                    islike: false,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          )),
        ),
      ),
    );
  }
}
