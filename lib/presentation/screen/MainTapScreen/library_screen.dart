import 'package:weteka/domain/usecase/data_uc_impl.dart';
import 'package:weteka/index.dart';
import 'package:weteka/presentation/screen/singlepage_book/singlepage_book.dart';
import 'package:weteka/presentation/screen/utils/app_colors.dart';

class LibraryScreen extends StatelessWidget {
  LibraryScreen({Key? key}) : super(key: key);
  final FetchDataUcImpl fetchDataUcImpl = FetchDataUcImpl();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          appBar: wetekaAppBar(context, isSearch: false),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SafeArea(
                child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const Explore(
                      content: 'Find your book',
                    ),
                    const Ctegory(),
                    books(context),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            )),
          )),
    );
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
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    mainAxisExtent: 350,
                  ),
                  itemCount: fetchAllBook.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SinglePageBook(
                            detailBook: fetchAllBook,
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
                              padding: const EdgeInsets.only(
                                  left: 4, right: 4, top: 4),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Image.network(
                                  fetchAllBook[index]['thumbnail'],
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
                                      (MediaQuery.of(context).size.width / 2) -
                                          25,
                                  child: CustomText(
                                    title: fetchAllBook[index]['title'],
                                    isFontSize: false,
                                    fontSize: 12,
                                    color: hexaCodeToColor(AppColor.blublack),
                                  ),
                                ),
                              ),
                            ),
                            const Spacer(),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, bottom: 5),
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
                                            fetchAllBook[index]["organization"]
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
                                          SizedBox(
                                            width: (MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    4.5) -
                                                20,
                                            child: Text(
                                              fetchAllBook[index]
                                                  ["organization"]["name"],
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: hexaCodeToColor(
                                                    AppColor.blublack),
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          if (fetchAllBook[index]
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
                                            padding:
                                                const EdgeInsets.only(top: 3.0),
                                            child: CustomText(
                                              title: fetchAllBook[index]
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
                                            color:
                                                Color.fromARGB(67, 2, 28, 60),
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
                    );
                  },
                ),
              );
            }),
        const SizedBox(
          height: 60,
        )
      ],
    );
  }
}
