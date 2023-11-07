import 'package:weteka/domain/usecase/data_uc_impl.dart';
import 'package:weteka/index.dart';

import 'package:weteka/presentation/screen/progress/progress_screen.dart';

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

  // @override
  // void initState() {
  //   super.initState();
  //   fetchDataUcImpl.scrollController.addListener(() {
  //     fetchDataUcImpl.scrollListener();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    fetchDataUcImpl.getQuery();
    //fetchDataUcImpl.scrollListener();

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
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

                  continueCourse(context),
                  const Ctegory(),
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
          height: 190,
          child: ValueListenableBuilder(
              valueListenable: fetchDataUcImpl.storePopularCourse,
              builder: (context, List<dynamic> fetchCourse, wg) {
                return ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  // itemCount: 8,
                  itemCount: fetchCourse.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SinglePageCourse(
                              aboutCourse: fetchCourse,
                              index: index,
                            ),
                          ),
                        ),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 7, left: 8.0),
                                child: Card(
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  margin: const EdgeInsets.only(right: 8),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  child: Image.network(
                                    fetchCourse[index]["thumbnail"],
                                    height: 100,
                                    width: 165,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, left: 10),
                                child: SizedBox(
                                  width:
                                      (MediaQuery.of(context).size.width / 2) -
                                          25,
                                  child: Text(
                                    fetchCourse[index]["title"],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Color.fromARGB(216, 2, 28, 60),
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, top: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(32),
                                          ),
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
                                            if (fetchCourse[index]
                                                        ["organization"]
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
                                            'អ្នកទស្សនា ${fetchCourse[index]["views"].toString()}​',
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
                    builder: (context) => LibraryScreen(),
                  ),
                );
              },
              child: const Text('See all'),
            )
          ],
        ),
        SizedBox(
          height: 350,
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
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SinglePageBook(
                              detailBook: fetchLibrary,
                              index: index,
                            ),
                          ),
                        ),
                        child: SizedBox(
                          width: 190,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 4, right: 4, top: 4),
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Image.network(
                                      fetchLibrary[index]['thumbnail'],
                                      height: 230,
                                      width: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 41),
                                  child: Row(
                                    children: [
                                      RateStar(),
                                      RateStar(),
                                      RateStar(),
                                      RateStar(isBlue: false),
                                      RateStar(isBlue: false),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Expanded(
                                    child: SizedBox(
                                      width:
                                          (MediaQuery.of(context).size.width /
                                                  2) -
                                              25,
                                      child: CustomText(
                                        title: fetchLibrary[index]['title'],
                                        isFontSize: false,
                                        fontSize: 12,
                                        color:
                                            hexaCodeToColor(AppColor.blublack),
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, bottom: 5),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(32),
                                            ),
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                fetchLibrary[index]
                                                    ["organization"]["logo"],
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
                                              SizedBox(
                                                width: (MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        4.5) -
                                                    20,
                                                child: Text(
                                                  fetchLibrary[index]
                                                      ["organization"]["name"],
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 11,
                                                    color: hexaCodeToColor(
                                                        AppColor.blublack),
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                              if (fetchLibrary[index]
                                                          ["organization"]
                                                      ["isVerify"] ==
                                                  true)
                                                const Icon(
                                                  LucideIcons.badgeCheck,
                                                  color: Colors.blue,
                                                  size: 15,
                                                ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 3.0),
                                                child: CustomText(
                                                  title: fetchLibrary[index]
                                                          ["views"]
                                                      .toString(),
                                                  isFontSize: false,
                                                  fontSize: 9,
                                                  color: const Color.fromARGB(
                                                      67, 2, 28, 60),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              const CustomText(
                                                title: "ចំនួនទស្សនា",
                                                isFontSize: false,
                                                fontSize: 9,
                                                color: Color.fromARGB(
                                                    67, 2, 28, 60),
                                              ),
                                            ],
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
                                  padding:
                                      const EdgeInsets.only(left: 8, top: 10),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(32),
                                            ),
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                fetchKaset[index]
                                                    ["organization"]["logo"],
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
                                              SizedBox(
                                                width: (MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        4) -
                                                    25,
                                                child: Text(
                                                  fetchKaset[index]
                                                      ["organization"]["name"],
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 11,
                                                    color: hexaCodeToColor(
                                                        AppColor.blublack),
                                                  ),
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              if (fetchKaset[index]
                                                          ["organization"]
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
                                            padding: const EdgeInsets.only(
                                                right: 25),
                                            child: Text(
                                              fetchDataUcImpl
                                                  .formatDateForWeteka(
                                                fetchKaset[index]['createdAt'],
                                              ),
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
