import 'package:weteka/index.dart';

class SinglePageBook extends StatelessWidget {
  const SinglePageBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: wetekaAppBar(context, isImg: false, isScan: false),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              wetekwBook(context),
              aboutTheBook(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget wetekwBook(BuildContext context) {
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
          child: Image.asset(
            'assets/images/cover-book 1.png',
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 13,
        ),
        const CustomText(
          title: 'Weteka Official',
          isFontSize: false,
          fontSize: 14,
          color: Color.fromARGB(255, 0, 115, 255),
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
            children: const [
              Information(
                img: 'assets/images/file-signature(1).png',
                tit: 'Author',
                boldTit: 'Vuthy SAN',
              ),
              Information(
                img: 'assets/images/calendar-check-2.png',
                tit: 'published',
                boldTit: '12/12/2023',
              ),
              Information(
                img: 'assets/images/calendar-check.png',
                tit: 'updated',
                boldTit: '15/12/2023',
              ),
              Information(
                img: 'assets/images/languages.png',
                tit: 'language',
                boldTit: 'Khmer',
              ),
              Information(
                img: 'assets/images/list-video.png',
                tit: 'categories',
                boldTit: 'Sciences',
              ),
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
          onNavigator: () {},
        ),
      ],
    ),
  );
}
