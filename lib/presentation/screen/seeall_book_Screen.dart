import 'package:weteka/domain/usecase/data_uc_impl.dart';
import 'package:weteka/index.dart';
import 'package:weteka/presentation/screen/singlepage_book/singlepage_book.dart';
import 'package:weteka/presentation/screen/utils/app_colors.dart';

class SeeAllBookk extends StatelessWidget {
  SeeAllBookk({Key? key}) : super(key: key);
  final FetchDataUcImpl fetchDataUcImpl = FetchDataUcImpl();

  @override
  Widget build(BuildContext context) {
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
                  const Category(),
                  books(context),
                ],
              ),
            ),
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
                  crossAxisSpacing: 15,
                  childAspectRatio: 9 / 15,
                ),
                itemCount: fetchAllBook.length,
                itemBuilder: (context, index) {
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
                                padding: const EdgeInsets.only(top: 8, left: 2),
                                child: SizedBox(
                                  width:
                                      (MediaQuery.of(context).size.width / 2.7),
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
                                padding: const EdgeInsets.only(top: 8, left: 2),
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
          },
        ),
      ],
    );
  }
}
