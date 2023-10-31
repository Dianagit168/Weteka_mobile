import 'package:weteka/index.dart';
import 'package:weteka/widgets/video_widget.dart';

class DetailPopularCourseScreen extends StatefulWidget {
  const DetailPopularCourseScreen(
      {super.key, this.videoLink, this.courseDetail, this.index});
  final String? videoLink;
  final List<dynamic>? courseDetail;
  final int? index;

  @override
  State<DetailPopularCourseScreen> createState() =>
      _DetailPopularCourseScreenState();
}

class _DetailPopularCourseScreenState extends State<DetailPopularCourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail')),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const VideoWidget(
              videoLink: 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50, top: 10),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(32),
                        ),
                        color: Colors.amber,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://api.weteka.org/public/orgs/6441eded703ee8c726e2098e/images/f989fbfc-5ccf-43c7-8c49-81296089766b.jpg'),
                        )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            widget.courseDetail![widget.index!]["organization"]
                                ["name"],
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Color.fromARGB(155, 2, 28, 60),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          if (widget.courseDetail![widget.index!]
                                  ["organization"]["isVerify"] ==
                              true)
                            const Icon(
                              LucideIcons.badgeCheck,
                              color: Colors.blue,
                              size: 15,
                            ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: Text(
                          widget.courseDetail![widget.index!]["views"]
                              .toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 9,
                              color: Color.fromARGB(67, 2, 28, 60)),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  ElevatedButtonCust(
                    icon: LucideIcons.thumbsUp,
                    haveIcon: true,
                    isColor: false,
                    color: const Color.fromARGB(75, 118, 133, 156),
                    tit: '17',
                    colorTit: Colors.black,
                    w: 80,
                    h: 35,
                    sizfo: 17,
                    circleBut: 32,
                    onNavigator: () {},
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButtonCust(
                    tit: 'តាមដាន',
                    w: 80,
                    h: 35,
                    sizfo: 15,
                    circleBut: 32,
                    onNavigator: () {},
                  ),
                ],
              ),
            ),
            wetekaTab(context),
          ],
        ),
      ),
    );
  }

  Widget wetekaTab(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 18,
        right: 18,
        top: 32,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              SizedBox(
                height: 30,
                width: MediaQuery.of(context).size.width,
                child: TabBar(
                  isScrollable: true,
                  physics: const ClampingScrollPhysics(),
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(76, 0, 102, 255),
                  ),
                  labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                  unselectedLabelColor: const Color.fromARGB(255, 2, 28, 60),
                  labelColor: const Color.fromARGB(255, 0, 102, 255),
                  tabs: [
                    contentTap(
                      context,
                      "អំពីវគ្គសិក្សា",
                      LucideIcons.badgeInfo,
                    ),
                    contentTap(
                      context,
                      "ការសិក្សា",
                      LucideIcons.badgeHelp,
                    ),
                    contentTap(context, "ការវាយតម្លៃ", LucideIcons.star),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    aboutCourse(
                        context,
                        widget.courseDetail![widget.index!]["objective"],
                        widget.courseDetail![widget.index!]["description"]),
                    const Text(
                      'Login is required ',
                      textAlign: TextAlign.center,
                    ),
                    const Text('No data'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget contentTap(BuildContext context, String? content, IconData? icon) {
    return Row(
      children: [
        Icon(
          icon!,
          size: 20,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          content!,
        ),
      ],
    );
  }

  Widget aboutCourse(BuildContext context, String? obj, String? desc) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'គោលបំណងនៃមេរៀន',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(obj!),
        const SizedBox(
          height: 30,
        ),
        const Text('ការពិព័ណ៌នា',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 10,
        ),
        Text(desc!),
      ],
    );
  }
}
