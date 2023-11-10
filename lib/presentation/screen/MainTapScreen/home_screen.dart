import 'package:weteka/domain/usecase/data_uc_impl.dart';
import 'package:weteka/index.dart';

import 'package:weteka/presentation/screen/progress/progress_screen.dart';
import 'package:weteka/presentation/screen/seeall_book_Screen.dart';

import 'package:weteka/presentation/screen/singlepage_book/singlepage_book.dart';
import 'package:weteka/presentation/screen/singlepage_kaset/singlepage_kaset.dart';
import 'package:weteka/presentation/screen/singlepagecourse/singpagecourse.dart';
import 'package:weteka/presentation/screen/utils/app_colors.dart';

import 'package:weteka/presentation/seeall_kaset.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final FetchDataUcImpl fetchDataUcImpl = FetchDataUcImpl();

  @override
  Widget build(BuildContext context) {
    fetchDataUcImpl.getQuery();

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
        appBar: wetekaAppBar(context, isBell: false, isExpanded: false),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Explore(
                  content: 'Find your courses',
                ),

                continueCourse(context),
                const Category(),
                // Popular Course
                popularContent(
                  context,
                  fetchDataUcImpl,
                ),

                // Library
                library(context, fetchDataUcImpl),
                kasetOrPharagraph(
                  context,
                  fetchDataUcImpl,
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
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

Widget popularContent(
  BuildContext context,
  FetchDataUcImpl fetchDataUcImpl,
) {
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomText(title: 'Popular Course'),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CourseScreen(),
                  ),
                );
              },
              child: const Text('See all'),
            )
          ],
        ),
        SizedBox(
          height: 150,
          child: ValueListenableBuilder(
              valueListenable: fetchDataUcImpl.storePopularCourse,
              builder: (context, List<dynamic> fetchCourse, wg) {
                return ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return fetchCourse.isEmpty
                        ? const CircularProgressIndicator()
                        : InkWell(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SinglePageCourse(
                                  aboutCourse: fetchCourse,
                                  index: index,
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 7, left: 4),
                                  child: Card(
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Image.network(
                                      fetchCourse[index]["thumbnail"],
                                      height: 100,
                                      width: 150,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 5,
                                    left: 10,
                                  ),
                                  child: SizedBox(
                                    width: (MediaQuery.of(context).size.width /
                                        2.7),
                                    child: CustomText(
                                      maxLine: 1,
                                      isBold: false,
                                      fontWeight: FontWeight.normal,
                                      title: fetchCourse[index]["title"],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                  },
                );
              }),
        ),
      ],
    ),
  );
}

Widget library(BuildContext context, FetchDataUcImpl fetchDataUcImpl) {
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomText(title: 'Library'),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SeeAllBookk(),
                  ),
                );
              },
              child: const Text('See all'),
            )
          ],
        ),
        SizedBox(
          height: 300,
          width: MediaQuery.of(context).size.width,
          child: ValueListenableBuilder(
              valueListenable: fetchDataUcImpl.storeLibrary,
              builder: (context, List<dynamic> fetchLibrary, wg) {
                return ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 8,
                  // itemCount: fetchLibrary.length,
                  itemBuilder: (context, index) {
                    return fetchLibrary.isEmpty
                        ? const CircularProgressIndicator()
                        : InkWell(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SinglePageBook(
                                  detailBook: fetchLibrary,
                                  index: index,
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 4,
                                    top: 4,
                                  ),
                                  child: Card(
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Image.network(
                                      fetchLibrary[index]['thumbnail'],
                                      height: 220,
                                      width: 150,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8, left: 8.0),
                                  child: SizedBox(
                                    width: (MediaQuery.of(context).size.width /
                                        2.7),
                                    child: CustomText(
                                      maxLine: 1,
                                      fontWeight: FontWeight.normal,
                                      title: fetchLibrary[index]['title'],
                                      isFontSize: false,
                                      fontSize: 14,
                                      color: hexaCodeToColor(AppColor.blublack),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8, left: 8.0),
                                  child: CustomText(
                                    maxLine: 1,
                                    isBold: false,
                                    fontWeight: FontWeight.normal,
                                    title:
                                        'by ${fetchLibrary[index]['owner']['fullname']}',
                                    isFontSize: false,
                                    fontSize: 12,
                                    color: hexaCodeToColor(AppColor.blublack),
                                  ),
                                )
                              ],
                            ),
                          );
                  },
                );
              }),
        ),
      ],
    ),
  );
}

Widget kasetOrPharagraph(
  BuildContext context,
  FetchDataUcImpl fetchDataUcImpl,
) {
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomText(title: 'Kaset'),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SeeAllKasetScreen(),
                  ),
                );
              },
              child: const Text('See all'),
            )
          ],
        ),
        SizedBox(
          height: 270,
          child: ValueListenableBuilder(
              valueListenable: fetchDataUcImpl.storeKasetOrPharagraph,
              builder: (context, List<dynamic> fetchKaset, wg) {
                return ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 8,
                  // itemCount: fetchKaset.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SinglePageLKaset(
                              readBook: fetchKaset,
                              index: index,
                            ),
                          ),
                        ),
                        child: SizedBox(
                          width: 190,
                          child: Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 4, top: 4),
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Image.network(
                                      fetchKaset[index]["owner"]['avatar'],
                                      height: 120,
                                      width: 165,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: SizedBox(
                                    width: (MediaQuery.of(context).size.width /
                                            2) -
                                        25,
                                    child: Text(
                                      fetchKaset[index]["title"],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color:
                                            hexaCodeToColor(AppColor.blublack),
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 10, top: 20, left: 10),
                                  child: SizedBox(
                                    width: (MediaQuery.of(context).size.width /
                                            2) -
                                        25,
                                    child: Text(
                                      fetchKaset[index]["content"],
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Color.fromARGB(108, 2, 28, 60),
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: CustomText(
                                    isBold: false,
                                    maxLine: 1,
                                    fontWeight: FontWeight.normal,
                                    title:
                                        'by ${fetchKaset[index]['owner']['fullname']}',
                                    isFontSize: false,
                                    fontSize: 12,
                                    color: hexaCodeToColor(AppColor.blublack),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              }),
        ),
      ],
    ),
  );
}
