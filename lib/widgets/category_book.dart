import 'package:weteka/domain/usecase/data_uc_impl.dart';
import 'package:weteka/index.dart';
import 'package:weteka/presentation/screen/seeall_book_Screen.dart';
import 'package:weteka/presentation/screen/utils/app_colors.dart';

class CategoryBookWidget extends StatelessWidget {
  CategoryBookWidget({super.key, this.title, this.onNavigator});
  final FetchDataUcImpl fetchDataUcImpl = FetchDataUcImpl();
  final String? title;
  final void Function()? onNavigator;

  @override
  Widget build(BuildContext context) {
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
                builder: (context, List<dynamic> fetchCateBook, wg) {
                  return ListView.builder(
                    itemCount: 8,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
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
                                fetchCateBook[index]['thumbnail'],
                                height: 220,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8, left: 8.0),
                            child: SizedBox(
                              width: (MediaQuery.of(context).size.width / 2.7),
                              child: CustomText(
                                maxLine: 1,
                                fontWeight: FontWeight.normal,
                                title: fetchCateBook[index]['title'],
                                isFontSize: false,
                                fontSize: 14,
                                color: hexaCodeToColor(AppColor.blublack),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8, left: 8.0),
                            child: CustomText(
                              maxLine: 1,
                              isBold: false,
                              fontWeight: FontWeight.normal,
                              title:
                                  'by ${fetchCateBook[index]['owner']['fullname']}',
                              isFontSize: false,
                              fontSize: 12,
                              color: hexaCodeToColor(AppColor.blublack),
                            ),
                          )
                        ],
                      );
                    },
                  );
                }),
          )
        ],
      ),
    );
  }
}
