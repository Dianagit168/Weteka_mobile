import 'package:carousel_slider/carousel_slider.dart';
import 'package:weteka/domain/usecase/data_uc_impl.dart';
import 'package:weteka/index.dart';
import 'package:weteka/presentation/screen/singlepage_book/singlepage_book.dart';
import 'package:weteka/presentation/screen/utils/app_colors.dart';
import 'package:weteka/widgets/category_book.dart';

class LibraryScreen extends StatefulWidget {
  LibraryScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  final FetchDataUcImpl fetchDataUcImpl = FetchDataUcImpl();
  int activeIndexx = 0;

  @override
  Widget build(BuildContext context) {
    fetchDataUcImpl.getQuery();
    return SafeArea(
      child: Scaffold(
          appBar: wetekaAppBar(context, isSearch: false),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  const Explore(
                    content: 'Find your book',
                  ),
                  _autoPageView(context),
                  CategoryBookWidget(
                    title: 'Book A',
                  ),
                  CategoryBookWidget(
                    title: 'Book B',
                  ),
                  CategoryBookWidget(
                    title: 'Book C',
                  ),
                  CategoryBookWidget(
                    title: 'Book D',
                  ),
                ],
              ),
            ),
          )),
    );
  }

  Widget _autoPageView(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: fetchDataUcImpl.storeLibrary,
        builder: (context, List<dynamic> displayBook, wg) {
          return Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              CarouselSlider.builder(
                options: CarouselOptions(
                  onPageChanged: (index, reason) {
                    setState(() {
                      activeIndexx = index;
                    });
                  },
                  aspectRatio: 16 / 13,
                  viewportFraction: 1.5,
                  //autoPlay: true,
                ),
                itemCount: 5,
                itemBuilder: (context, itemIndex, pageViewIndex) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 210,
                        width: 130,
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.network(
                            displayBook[itemIndex]['thumbnail'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      CustomText(
                        title: displayBook[itemIndex]['title'],
                      )
                    ],
                  );
                },
              ),
              AnimatedSmoothIndicator(
                activeIndex: activeIndexx,
                count: 5,
                effect: const ExpandingDotsEffect(
                  radius: 16.0,
                  dotWidth: 8,
                  dotHeight: 8,
                  paintStyle: PaintingStyle.fill,
                ),
              ),
            ],
          );
        });
  }

  Widget books(BuildContext context) {
    fetchDataUcImpl.getQuery();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          title: 'Books',
        ),
        const SizedBox(
          height: 15,
        ),
        ValueListenableBuilder(
            valueListenable: fetchDataUcImpl.storeLibrary,
            builder: (context, List<dynamic> fetchAllBook, wg) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    childAspectRatio: 9 / 15,
                  ),
                  itemCount: fetchAllBook.length,
                  itemBuilder: (context, index) {
                    print(
                        "fetchAllBook[index]['thumbnail']; ${fetchAllBook[index]['thumbnail']}");

                    return fetchAllBook.isEmpty
                        ? const CircularProgressIndicator()
                        : InkWell(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SinglePageBook(
                                  detailBook: fetchAllBook,
                                  index: index,
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 3.5,
                                  width: MediaQuery.of(context).size.width,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Image.network(
                                      fetchAllBook[index]['thumbnail'],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8, left: 2),
                                  child: SizedBox(
                                    width: (MediaQuery.of(context).size.width /
                                        2.7),
                                    child: CustomText(
                                      maxLine: 1,
                                      fontWeight: FontWeight.normal,
                                      title: fetchAllBook[index]['title'],
                                      isFontSize: false,
                                      fontSize: 14,
                                      color: hexaCodeToColor(AppColor.blublack),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8, left: 2),
                                  child: CustomText(
                                    maxLine: 1,
                                    isBold: false,
                                    fontWeight: FontWeight.normal,
                                    title:
                                        'by ${fetchAllBook[index]['owner']['fullname']}',
                                    isFontSize: false,
                                    fontSize: 12,
                                    color: hexaCodeToColor(AppColor.blublack),
                                  ),
                                )
                              ],
                            ),
                          );
                  },
                ),
              );
            }),
      ],
    );
  }
}
