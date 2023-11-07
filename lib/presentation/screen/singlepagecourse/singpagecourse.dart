import 'package:weteka/domain/usecase/data_uc_impl.dart';
import 'package:weteka/index.dart';
import 'package:weteka/widgets/org_channel.dart';
import 'package:weteka/widgets/video_widget.dart';

class SinglePageCourse extends StatelessWidget {
  SinglePageCourse({Key? key, this.aboutCourse, this.index}) : super(key: key);
  final List<dynamic>? aboutCourse;
  final int? index;
  final FetchDataUcImpl fetchDataUcImpl = FetchDataUcImpl();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: wetekaAppBar(context, isImg: false, isScan: false),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                video(context),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: OrgChannel(
                    orgChannel: aboutCourse,
                    index: index,
                  ),
                ),
                interested(context),
                listVideo(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget video(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 2.5,
          child: const VideoWidget(
            videoLink:
                'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18, top: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                title: aboutCourse![index!]["title"],
                isFontSize: false,
                fontSize: 17,
                color: const Color.fromARGB(255, 2, 28, 60),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    Text('${aboutCourse![index!]["views"]} views - '),
                    Text(
                      '${fetchDataUcImpl.formatDateForWeteka(
                        aboutCourse![index!]["createdAt"],
                      )} ago'
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

Widget interested(BuildContext context) {
  return SizedBox(
    height: 35,
    child: ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: interestedData.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Container(
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color.fromARGB(162, 228, 228, 228),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('${interestedData[index].img}'),
                const SizedBox(
                  width: 7,
                ),
                Text(
                  '${interestedData[index].tit}',
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 2, 28, 60),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}

Widget listVideo(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 20, left: 18, right: 18),
    child: SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: listVideoData.length,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: const Color.fromARGB(80, 0, 115, 255),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Image.asset('${listVideoData[index].img}'),
            ),
            title: CustomText(
              title: '${listVideoData[index].tit}',
              isFontSize: false,
              isBold: false,
              fontSize: 15,
              color: const Color.fromARGB(210, 2, 28, 60),
            ),
            subtitle: Row(
              children: [
                CustomText(
                  title: '${listVideoData[index].tit2}',
                  isFontSize: false,
                  isBold: false,
                  fontSize: 13,
                  color: const Color.fromARGB(121, 2, 28, 60),
                ),
                const CustomText(title: ' . '),
                CustomText(
                  title: '${listVideoData[index].subTit}',
                  isFontSize: false,
                  isBold: false,
                  fontSize: 13,
                  color: const Color.fromARGB(121, 2, 28, 60),
                ),
              ],
            ),
          );
        },
      ),
    ),
  );
}
