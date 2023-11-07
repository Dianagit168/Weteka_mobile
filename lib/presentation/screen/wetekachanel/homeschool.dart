import 'package:weteka/data/subsribchanel.dart';
import 'package:weteka/index.dart';

class HomeSchool extends StatelessWidget {
  const HomeSchool({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  persional(context),
                  description(context),
                  Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: ElevatedButtonCust(
                      tit: 'See less',
                      colorTit: const Color.fromARGB(255, 2, 28, 60),
                      w: 370,
                      h: 40,
                      sizfo: 15,
                      circleBut: 10,
                      isColor: false,
                      color: const Color.fromARGB(255, 221, 226, 233),
                      onNavigator: () {},
                    ),
                  ),
                  grade(context),
                  Course(
                    tit: 'Contents',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget persional(BuildContext context) {
  return const SizedBox(
    child: Column(
      children: [
        Information(
          img: 'assets/images/graduation-cap.png',
          tit: 'Teachers',
          boldTit: '30',
          tempTit: false,
        ),
        Information(
          img: 'assets/images/shield-check.png',
          tit: 'followers',
          boldTit: '1.2k',
          tempTit: false,
        ),
        Information(
          img: 'assets/images/list-video.png',
          tit: 'owned',
          boldTit: '3 Courses',
          tempTit: false,
        ),
      ],
    ),
  );
}

Widget description(BuildContext context) {
  return const Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Descriptions',
        style: TextStyle(color: Color.fromARGB(158, 2, 28, 60)),
      ),
      SizedBox(
        height: 7,
      ),
      Text(
        'Weteka is a virtual platform for students, teachers, and professionals to share their knowledge with other students. View or create lessons for free, as well as set up your own school with ease.',
        strutStyle: StrutStyle(height: 1.5),
        style: TextStyle(
          color: Color.fromARGB(93, 2, 28, 60),
        ),
      ),
    ],
  );
}

Widget grade(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 17),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomText(
              title: 'Grade',
            ),
            TextButton(
              onPressed: () {},
              child: const Text('See all'),
            )
          ],
        ),
        items(context),
      ],
    ),
  );
}

Widget items(BuildContext context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width,
    height: 130,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                height: 100,
                width: 150,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  color: Color.fromARGB(255, 0, 102, 255),
                ),
                child: Center(
                  child: Text(
                    '${gradeItem[index].img}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            CustomText(
              title: '${gradeItem[index].userName}',
              isFontSize: false,
              fontSize: 12,
              color: const Color.fromARGB(237, 2, 28, 60),
              isBold: false,
            ),
          ],
        );
      },
    ),
  );
}
