import 'package:carousel_slider/carousel_slider.dart';
import 'package:weteka/domain/usecase/data_uc_impl.dart';
import 'package:weteka/index.dart';
import 'package:weteka/presentation/screen/singlepagecourse/singpagecourse.dart';
import 'package:weteka/presentation/screen/utils/app_colors.dart';

class VideoScreen extends StatefulWidget {
  VideoScreen({Key? key}) : super(key: key);

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  int activeIndexx = 0;

  final FetchDataUcImpl fetchDataUcImpl = FetchDataUcImpl();

  @override
  Widget build(BuildContext context) {
    fetchDataUcImpl.getQuery();
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: wetekaAppBar(context, isSearch: false),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SafeArea(
              child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  const Explore(
                    content: 'Find your course',
                  ),
                  const Category(),
                  _autoSlideCourse(context),
                  cateVideo(context, fetchDataUcImpl, 'Math'),
                  cateVideo(context, fetchDataUcImpl, 'Phisics'),
                  cateVideo(context, fetchDataUcImpl, 'Network'),
                  cateVideo(context, fetchDataUcImpl, 'Computer Scient'),
                  
                  // Course(
                  //   tit: 'Courses',
                  //   islike: false,
                  // ),
                ],
              ),
            ),
          )),
        ),
      ),
    );
  }

  Widget _autoSlideCourse(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: fetchDataUcImpl.storePopularCourse,
      builder: (context, List<dynamic> displayCourse, wg) {
        return Column(
          children: [
            CarouselSlider.builder(
              options: CarouselOptions(
                onPageChanged: (index, reason) {
                  setState(() {
                    activeIndexx = index;
                  });
                },
                aspectRatio: 16 / 8,
                viewportFraction: 16 / 20,
                enlargeCenterPage: true,
                disableCenter: true,
                autoPlay: true,
              ),
              itemCount: 5,
              itemBuilder: (context, itemIndex, pageViewIndex) {
                return Card(
                  color: const Color.fromARGB(255, 115, 180, 213),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Stack(
                    children: [
                      Image.network(
                        displayCourse[itemIndex]['thumbnail'],
                        width: 300,
                        height: MediaQuery.of(context).size.height,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        left: 15,
                        top: 150,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: hexaCodeToColor(AppColor.blublack)),
                          width: (MediaQuery.of(context).size.width / 1.5),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              bottom: 4,
                              top: 4,
                              left: 0,
                            ),
                            child: Center(
                              child: CustomText(
                                title: displayCourse[itemIndex]['title'],
                                maxLine: 2,
                                isFontSize: false,
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 8,
                        left: 215,
                        child: Container(
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Padding(
                            padding:
                                EdgeInsets.only(top: 4, left: 12, right: 12),
                            child: CustomText(
                              title: 'Education',
                              isFontSize: false,
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            const SizedBox(
              height: 6,
            ),
            AnimatedSmoothIndicator(
              activeIndex: activeIndexx,
              count: 5,
              effect: ExpandingDotsEffect(
                  expansionFactor: 6,
                  radius: 16.0,
                  dotWidth: 8,
                  dotHeight: 8,
                  paintStyle: PaintingStyle.fill,
                  dotColor: const Color.fromARGB(39, 112, 112, 112),
                  activeDotColor: hexaCodeToColor(AppColor.blublack)),
            ),
          ],
        );
      },
    );
  }

  Widget cateVideo(
      BuildContext context, FetchDataUcImpl fetchDataUcImpl, String? title) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(title: title!),
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
                                      width:
                                          (MediaQuery.of(context).size.width /
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
}
