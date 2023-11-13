import 'package:weteka/domain/usecase/data_uc_impl.dart';
import 'package:weteka/index.dart';

import 'package:weteka/presentation/screen/singlepage_kaset/singlepage_kaset.dart';

import 'package:weteka/presentation/screen/utils/app_colors.dart';

class SeeAllKasetScreen extends StatelessWidget {
  SeeAllKasetScreen({super.key});
  final FetchDataUcImpl fetchDataUcImpl = FetchDataUcImpl();

  @override
  Widget build(BuildContext context) {
    fetchDataUcImpl.getQuery();

    return SafeArea(
      child: Scaffold(
        appBar: wetekaAppBar(context, isBell: false, isExpanded: false),
        body: ValueListenableBuilder(
          valueListenable: fetchDataUcImpl.storeKasetOrPharagraph,
          builder: (context, List<dynamic> fetchAllKaset, wg) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 2),
                child: GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      mainAxisExtent: 270,
                    ),
                    itemCount: fetchAllKaset.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SinglePageLKaset(
                              readBook: fetchAllKaset,
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
                                  padding: const EdgeInsets.only(top: 4),
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Image.network(
                                      fetchAllKaset[index]["owner"]['avatar'],
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
                                    width:
                                        (MediaQuery.of(context).size.width / 2) -
                                            25,
                                    child: Text(
                                      fetchAllKaset[index]["title"],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: hexaCodeToColor(AppColor.blublack),
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
                                    width:
                                        (MediaQuery.of(context).size.width / 2) -
                                            25,
                                    child: Text(
                                      fetchAllKaset[index]["content"],
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
                                        'by ${fetchAllKaset[index]['owner']['fullname']}',
                                    isFontSize: false,
                                    fontSize: 12,
                                    color: hexaCodeToColor(AppColor.blublack),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            );
          },
        ),
      ),
    );
  }
}
