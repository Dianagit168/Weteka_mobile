import 'package:weteka/domain/usecase/data_uc_impl.dart';
import 'package:weteka/index.dart';
import 'package:weteka/presentation/screen/singlepage_book_resding/singlepage_book_resding.dart';

class SinglePageBook extends StatelessWidget {
  SinglePageBook({Key? key, this.detailBook, this.index}) : super(key: key);
  final List<dynamic>? detailBook;
  final int? index;
  final FetchDataUcImpl fetchDataUcImpl = FetchDataUcImpl();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: wetekaAppBar(context, isImg: false, isScan: false),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              wetekaBook(context),
              aboutTheBook(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget wetekaBook(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 210,
            width: 150,
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.network(
                detailBook![index!]["thumbnail"],
              ),
            ),
          ),
          const SizedBox(
            height: 13,
          ),
          CustomText(
            title: detailBook![index!]["organization"]["name"],
            isFontSize: false,
            fontSize: 14,
            color: const Color.fromARGB(255, 0, 115, 255),
            isBold: false,
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomText(
            title: 'Copyright and trademark Policy',
            isFontSize: false,
            fontSize: 18,
            isBold: false,
            color: Color.fromARGB(210, 2, 28, 60),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            height: 170,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: singleBookData.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20, left: 45),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(17, 0, 115, 255),
                          ),
                          child: Image.asset('${singleBookData[index].img}'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: CustomText(
                          title: '${singleBookData[index].tit}',
                        ),
                      ),
                      CustomText(
                        title: '${singleBookData[index].subTit},',
                        isBold: false,
                        isFontSize: false,
                        fontSize: 13,
                        color: const Color.fromARGB(150, 2, 28, 60),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget aboutTheBook(BuildContext context) {
    fetchDataUcImpl.formatDateForWeteka;
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            title: 'About the book',
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Information(
                  img: 'assets/images/file-signature(1).png',
                  tit: 'Author',
                  boldTit: detailBook![index!]["owner"]["fullname"],
                ),
                Information(
                    img: 'assets/images/calendar-check-2.png',
                    tit: 'published',
                    boldTit: fetchDataUcImpl
                        .formatDateForWeteka(detailBook![index!]["createdAt"])),
                const Information(
                  img: 'assets/images/calendar-check.png',
                  tit: 'updated',
                  boldTit: '15/12/2023',
                ),
                const Information(
                  img: 'assets/images/languages.png',
                  tit: 'language',
                  boldTit: 'Khmer',
                ),
                Information(
                    img: 'assets/images/list-video.png',
                    tit: 'categories',
                    boldTit: detailBook![index!]["category"]["title"]["en"]),
              ],
            ),
          ),
          ElevatedButtonCust(
            haveImg: true,
            img: 'assets/images/book-open - white.png',
            tit: 'Read',
            w: 380,
            h: 45,
            sizfo: 17,
            circleBut: 12,
            onNavigator: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SinglePageBookReading(
                    readTheBook: detailBook,
                    index: index,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
