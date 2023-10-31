import 'package:weteka/domain/usecase/data_uc_impl.dart';
import 'package:weteka/index.dart';
import 'package:weteka/presentation/detail_popular_course_screen.dart';
import 'package:weteka/presentation/screen/progress/progress_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final FetchDataUcImpl fetchDataUcImpl = FetchDataUcImpl();

  @override
  Widget build(BuildContext context) {
    fetchDataUcImpl.fetchData();

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: wetekaAppBar(context, isBell: false, isExpanded: false),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Explore(
                    content: 'Find your courses',
                  ),

                  // Popular Course
                  continueCourse(context),
                  const Ctegory(),
                  popularContent(context, fetchDataUcImpl,
                      title: 'Popular Course', isSeeAll: false),

                  // Library
                  library(context),
                  popularContent(context, fetchDataUcImpl, title: 'Kaset'),
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

Widget continueCourse(BuildContext context) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Continue Course',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 2, 28, 60)),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProgressScreen(),
                ),
              );
            },
            child: const Text('See all'),
          )
        ],
      ),
      continueCourseInformation(context,
          content: 'LibreOffice Writer',
          lesson: '18 lessons',
          taskBar: 'assets/images/Progressbar 18.png'),
      const SizedBox(
        height: 10,
      ),
      continueCourseInformation(context,
          content: 'Learning Scratch',
          lesson: '12 lessons',
          taskBar: 'assets/images/Progressbar 12.png'),
    ],
  );
}

Widget continueCourseInformation(
  BuildContext context, {
  String? content,
  String? lesson,
  String? taskBar,
}) {
  return Container(
    height: 107,
    width: double.infinity,
    decoration: const BoxDecoration(
      color: Color.fromARGB(24, 0, 115, 255),
      borderRadius: BorderRadius.all(
        Radius.circular(18),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            title: content,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 280),
            child: Image(image: AssetImage('assets/images/Group 25.png')),
          ),
          Row(
            children: [
              const Image(
                image: AssetImage('assets/images/play-circle.png'),
              ),
              const SizedBox(
                width: 3,
              ),
              Text(lesson!)
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Image(
              image: AssetImage(taskBar!),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget popularContent(BuildContext context, FetchDataUcImpl fetchDataUcImpl,
    {String? title, bool? isSeeAll = true}) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CustomText(title: 'Popular Course'),
          isSeeAll!
              ? TextButton(
                  onPressed: () {},
                  child: const Text('See all'),
                )
              : Container(),
        ],
      ),
      const SizedBox(
        height: 15,
      ),
      SizedBox(
        height: 200,
        child: ValueListenableBuilder(
            valueListenable: fetchDataUcImpl.character,
            builder: (context, List<dynamic> fetchCourse, wg) {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: fetchCourse.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPopularCourseScreen(
                              courseDetail: fetchCourse,
                              index: index,
                            ),
                          )),
                      child: Container(
                        color: Colors.amber,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Image.network(
                                fetchCourse[index]["thumbnail"],
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 50),
                              child: Text(
                                fetchCourse[index]["title"],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Color.fromARGB(216, 2, 28, 60)),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 50, top: 10),
                              child: Row(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(32),
                                        ),
                                        color: Colors.amber,
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                            fetchCourse[index]["organization"]
                                                ["logo"],
                                          ),
                                        )),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            fetchCourse[index]["organization"]
                                                ["name"],
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11,
                                              color: Color.fromARGB(
                                                  155, 2, 28, 60),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          if (fetchCourse[index]["organization"]
                                                  ["isVerify"] ==
                                              true)
                                            const Icon(
                                              LucideIcons.badgeCheck,
                                              color: Colors.blue,
                                              size: 15,
                                            )
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 25),
                                        child: Text(
                                          fetchCourse[index]["views"]
                                              .toString(),
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 9,
                                              color: Color.fromARGB(
                                                  67, 2, 28, 60)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }),
      ),
    ],
  );
}

Widget library(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const CustomText(
        title: 'Library',
      ),
      const SizedBox(
        height: 12,
      ),
      SizedBox(
        height: 250,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: listLibrary.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Image.asset(
                    '${listLibrary[index].img}',
                  ),
                ),
                const Row(
                  children: [
                    RateStar(),
                    RateStar(),
                    RateStar(),
                    RateStar(isBlue: false),
                    RateStar(isBlue: false),
                  ],
                ),
                Expanded(
                  child: SizedBox(
                    width: (MediaQuery.of(context).size.width / 3) - 25,
                    child: Text(
                      "${listLibrary[index].tit}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Color.fromARGB(216, 2, 28, 60),
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Image.asset('${listLibrary[index].subimg}'),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${listLibrary[index].tit2}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Color.fromARGB(155, 2, 28, 60)),
                        ),
                        Text(
                          "${listLibrary[index].subTit}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 9,
                              color: Color.fromARGB(67, 2, 28, 60)),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    ],
  );
}
