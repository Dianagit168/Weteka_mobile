import 'package:weteka/domain/usecase/data_uc_impl.dart';
import 'package:weteka/index.dart';
import 'package:weteka/presentation/screen/singlepagecourse/singpagecourse.dart';
import 'package:weteka/presentation/screen/utils/app_colors.dart';

class Course extends StatelessWidget {
  Course({Key? key, this.isTit = true, this.tit, this.islike = true})
      : super(key: key);
  final bool? isTit;
  final String? tit;
  final bool? islike;
  final FetchDataUcImpl fetchDataUcImpl = FetchDataUcImpl();

  @override
  Widget build(BuildContext context) {
    fetchDataUcImpl.getQuery();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        isTit!
            ? CustomText(
                title: tit,
              )
            : const CustomText(
                title: '',
              ),
        SizedBox(
          height: isTit! ? 15 : 0,
        ),
        ValueListenableBuilder(
            valueListenable: fetchDataUcImpl.storePopularCourse,
            builder: (context, List<dynamic> fetchAllCourse, wg) {
              return GridView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 270,
                ),
                itemCount: fetchAllCourse.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SinglePageCourse(
                            aboutCourse: fetchAllCourse,
                            index: index,
                          ),
                        )),
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Image.network(
                              fetchAllCourse[index]["thumbnail"],
                              height: 170,
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 10),
                            child: SizedBox(
                              width:
                                  (MediaQuery.of(context).size.width / 2) - 25,
                              child: Text(
                                fetchAllCourse[index]["title"],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: hexaCodeToColor(AppColor.blublack)),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, top: 10),
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
                                          fetchAllCourse[index]["organization"]
                                              ["logo"],
                                        ),
                                      )),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          fetchAllCourse[index]["organization"]
                                              ["name"],
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11,
                                            color:
                                                Color.fromARGB(155, 2, 28, 60),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        if (fetchAllCourse[index]
                                                ["organization"]["isVerify"] ==
                                            true)
                                          const Icon(
                                            LucideIcons.badgeCheck,
                                            color: Colors.blue,
                                            size: 15,
                                          )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 25),
                                      child: Text(
                                        fetchAllCourse[index]["views"]
                                            .toString(),
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 9,
                                          color: Color.fromARGB(67, 2, 28, 60),
                                        ),
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
                  );
                },
              );
            }),
        const SizedBox(
          height: 60,
        )
      ],
    );
  }
}
