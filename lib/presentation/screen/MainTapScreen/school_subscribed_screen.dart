import 'package:carousel_slider/carousel_slider.dart';
import 'package:weteka/data/subsribchanel.dart';
import 'package:weteka/domain/usecase/data_uc_impl.dart';
import 'package:weteka/index.dart';
import 'package:weteka/presentation/screen/singlepage_kaset/singlepage_kaset.dart';
import 'package:weteka/presentation/screen/utils/app_colors.dart';

class SchoolSubscribedScreen extends StatefulWidget {
  const SchoolSubscribedScreen({Key? key}) : super(key: key);

  @override
  State<SchoolSubscribedScreen> createState() => _SchoolSubscribedScreenState();
}

class _SchoolSubscribedScreenState extends State<SchoolSubscribedScreen> {
  int activeIndexx = 0;
  final FetchDataUcImpl fetchDataUcImpl = FetchDataUcImpl();
  @override
  Widget build(BuildContext context) {
    fetchDataUcImpl.getQuery();

    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          appBar: wetekaAppBar(context),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SafeArea(
                child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                child: Column(
                  children: [
                    subscribChanel(context),
                    _autoSlideNews(context),
                    categoryNewsWidget(
                      context,
                      'Social News',
                      'https://media.cnn.com/api/v1/images/stellar/prod/231107232600-xi-belt-road-forum-101723.jpg?c=16x9&q=h_720,w_1280,c_fill/f_webp',
                      'China has a sweeping vision to reshape the world — and countries are listening',
                    ),
                    categoryNewsWidget(
                      context,
                      'Entertainment News',
                      'https://scontent.fpnh10-1.fna.fbcdn.net/v/t39.30808-1/324595915_531496648942572_5382730301902174511_n.jpg?stp=dst-jpg_p160x160&_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_ohc=Qg3vx8Nsn6cAX-LukiT&_nc_ht=scontent.fpnh10-1.fna&oh=00_AfAefMeOvY0Mli5HjmkonJCNIFxQGIS7tWtasKY66zXoIg&oe=65531656',
                      'The Campop of cambodia',
                    ),
                    categoryNewsWidget(
                      context,
                      'Sport News',
                      'https://www.dangkorsenchey.com/_next/image?url=https%3A%2F%2Fbackend.dangkorsenchey.com%2Fpublic%2Fimages%2F1690958860766.png&w=96&q=75',
                      'ISI DANGKOR SENCHEY FC 1 : 0 ANGKOR TIGER FC',
                    )
                  ],
                ),
              ),
            )),
          )),
    );
  }

  Widget subscribChanel(BuildContext context) {
    return SizedBox(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Flexible(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: chanel.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              // color: const Color.fromARGB(255, 2, 28, 60),
                              image: DecorationImage(
                                  image: AssetImage('${chanel[index].img}'),
                                  filterQuality: FilterQuality.high,
                                  fit: BoxFit.cover),
                            ),
                          ),
                          if (index == 1 || index == 2 || index == 5)
                            Positioned(
                              left: 40,
                              top: 40,
                              child: Container(
                                height: 15,
                                width: 15,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 1,
                                      top: 1,
                                      child: Container(
                                        height: 12,
                                        width: 12,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromARGB(255, 0, 102, 255),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        '${chanel[index].userName}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 2, 28, 60),
                            fontSize: 12),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            width: 30,
            child: Padding(
              padding: EdgeInsets.only(left: 13, bottom: 23),
              child: Text(
                'All',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 2, 28, 60),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _autoSlideNews(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: fetchDataUcImpl.storeLibrary,
      builder: (context, List<dynamic> displayBook, wg) {
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
                padEnds: false,
              ),
              itemCount: 5,
              itemBuilder: (context, itemIndex, pageViewIndex) {
                return SizedBox(
                  width: 300,
                  child: Card(
                    color: const Color.fromARGB(255, 115, 180, 213),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Stack(
                      children: [
                        Image.network(
                          'https://media.cnn.com/api/v1/images/stellar/prod/231107232600-xi-belt-road-forum-101723.jpg?c=16x9&q=h_720,w_1280,c_fill/f_webp',
                          width: 300,
                          height: MediaQuery.of(context).size.height,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          left: 8,
                          top: 130,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(165, 255, 255, 255),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            width:
                                (MediaQuery.of(context).size.width / 1.5) - 2,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 4, top: 4, left: 8, right: 8),
                              child: CustomText(
                                title:
                                    'Today: China has a sweeping vision to reshape the world — and countries are listening',
                                maxLine: 2,
                                isFontSize: false,
                                color: hexaCodeToColor(AppColor.blublack),
                                fontSize: 12,
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
                                title: 'News',
                                isFontSize: false,
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
              effect: const ExpandingDotsEffect(
                  expansionFactor: 6,
                  radius: 16.0,
                  dotWidth: 8,
                  dotHeight: 8,
                  paintStyle: PaintingStyle.fill,
                  dotColor: Color.fromARGB(39, 112, 112, 112),
                  activeDotColor: Colors.redAccent),
            ),
          ],
        );
      },
    );
  }

  Widget categoryNewsWidget(
      BuildContext context, String? title, String? img, String? content) {
    fetchDataUcImpl.getQuery();
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(title: title!),
              TextButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => SeeAllBookk(),
                  //   ),
                  // );
                },
                child: const Text('See all'),
              )
            ],
          ),
          ValueListenableBuilder(
            valueListenable: fetchDataUcImpl.storeKasetOrPharagraph,
            builder: (context, List<dynamic> fetchCateBook, wg) {
              return GridView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisExtent: 100,
                ),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SinglePageLKaset(
                            readBook: fetchCateBook,
                            index: index,
                          ),
                        ),
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(39, 112, 112, 112),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 80,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  child: Image.network(
                                    img!,
                                    width: 80,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: (MediaQuery.of(context).size.width /
                                        1.6),
                                    child: CustomText(
                                      title: content!,
                                      maxLine: 2,
                                    ),
                                  ),
                                  const Row(
                                    children: [
                                      CustomText(
                                        title: '10 mins read',
                                        isFontSize: false,
                                        fontSize: 11,
                                        color: Color.fromARGB(255, 2, 28, 60),
                                      ),
                                      SizedBox(
                                        width: 130,
                                      ),
                                      CustomText(
                                        title: 'Today',
                                        isFontSize: false,
                                        fontSize: 11,
                                        color: Color.fromARGB(255, 2, 28, 60),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }
}
// Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Stack(
//                           children: [
//                             Positioned(
//                               top: 120,
//                               child: SizedBox(
//                                 width: (MediaQuery.of(context).size.width / 1.6),
//                                 child: const CustomText(
//                                   title:
//                                       'Today: China has a sweeping vision to reshape the world — and countries are listening',
//                                   maxLine: 2,
//                                 ),
//                               ),
//                             ),
//                             Positioned(
//                               left: 208,
//                               child: Container(
//                                 height: 20,
//                                 decoration: BoxDecoration(
//                                   color: Colors.red,
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 child: const Padding(
//                                   padding:
//                                       EdgeInsets.only(top: 4, left: 12, right: 12),
//                                   child: CustomText(
//                                     title: 'News',
//                                     isFontSize: false,
//                                     color: Colors.white,
//                                     fontSize: 10,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),