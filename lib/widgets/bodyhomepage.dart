import '../index.dart';
import 'category.dart';
import 'continuecourse.dart';
import 'explore.dart';
import 'kaset.dart';
import 'library.dart';

class BodyHomePage extends StatelessWidget {
  const BodyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              Explore(
                hintText: 'Find your courses',
              ),
              ContinueCourse(),
              Ctegory(),
              PopularCourse(),
              Library(),
              Kaset(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
