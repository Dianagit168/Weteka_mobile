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
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 0,
              backgroundColor: const Color.fromARGB(0, 255, 255, 255),
              floating: false,
              pinned: true,
              expandedHeight: 350,
              flexibleSpace: FlexibleSpaceBar(
                background: video(context),
              ),
              bottom: PreferredSize(
                preferredSize: Size.zero,
                child: Container(
                  height: 56,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  width: double.maxFinite,
                  child: Center(
                    child: CustomText(
                      title: aboutCourse![index!]['title'],
                      isFontSize: false,
                      fontSize: 16,
                      color: const Color.fromARGB(255, 2, 28, 60),
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: dateTime(context),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: OrgChannel(
                  orgChannel: aboutCourse,
                  index: index,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: interested(context),
            ),
            SliverToBoxAdapter(
              child: listVideo(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget video(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2.5,
      child: const VideoWidget(
        videoLink:
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      ),
    );
  }

  Widget dateTime(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            children: [
              Text('${aboutCourse![index!]["views"]} views - '),
              Text('${fetchDataUcImpl.formatDateForWeteka(
                aboutCourse![index!]["createdAt"],
              )} ago'),
            ],
          ),
        )
      ],
    );
  }
}

Widget interested(BuildContext context) {
  return SizedBox(
    height: 30,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: 1,
      itemBuilder: (context, index) {
        return Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 8),
              child: ElevatedButtonCust(
                tit: 'Like',
                haveIcon: true,
                icon: LucideIcons.heart,
                colorTit: const Color.fromARGB(255, 2, 28, 60),
                isColor: false,
                color: const Color.fromARGB(162, 228, 228, 228),
                w: 0,
                h: 30,
                sizfo: 12,
                circleBut: 32,
                onNavigator: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: ElevatedButtonCust(
                tit: 'Comments',
                haveIcon: true,
                icon: LucideIcons.messageCircle,
                colorTit: const Color.fromARGB(255, 2, 28, 60),
                isColor: false,
                color: const Color.fromARGB(162, 228, 228, 228),
                w: 0,
                h: 30,
                sizfo: 12,
                circleBut: 32,
                onNavigator: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: ElevatedButtonCust(
                tit: 'Share',
                haveIcon: true,
                icon: LucideIcons.share,
                colorTit: const Color.fromARGB(255, 2, 28, 60),
                isColor: false,
                color: const Color.fromARGB(162, 228, 228, 228),
                w: 0,
                h: 30,
                sizfo: 12,
                circleBut: 32,
                onNavigator: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: ElevatedButtonCust(
                tit: 'Star',
                haveIcon: true,
                icon: LucideIcons.star,
                colorTit: const Color.fromARGB(255, 2, 28, 60),
                isColor: false,
                color: const Color.fromARGB(162, 228, 228, 228),
                w: 0,
                h: 30,
                sizfo: 12,
                circleBut: 32,
                onNavigator: () {},
              ),
            ),
          ],
        );
      },
    ),
  );
}

Widget listVideo(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 18, right: 18),
    child: SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: listVideoData.length,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: const Color.fromARGB(80, 0, 115, 255),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Image.asset(
                '${listVideoData[index].img}',
              ),
            ),
            title: CustomText(
              title: '${listVideoData[index].tit}',
              isFontSize: false,
              isBold: false,
              fontSize: 13,
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
