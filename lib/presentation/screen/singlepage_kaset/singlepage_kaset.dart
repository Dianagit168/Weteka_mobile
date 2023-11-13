import 'package:weteka/index.dart';
import 'package:weteka/widgets/org_channel.dart';
import 'package:weteka/widgets/contents.dart';

class SinglePageLKaset extends StatelessWidget {
  const SinglePageLKaset({Key? key, this.readBook, this.index})
      : super(key: key);
  final List<dynamic>? readBook;
  final int? index;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 0,
              backgroundColor: const Color.fromARGB(0, 255, 255, 255),
              floating: false,
              pinned: true,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  readBook![index!]['owner']['avatar'],
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(15),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    // gradient: LinearGradient(
                    //   colors: [
                    //     Color.fromARGB(255, 71, 28, 28),
                    //     Colors.blue,
                    //   ],
                    //   end: Alignment.bottomCenter,
                    //   begin: Alignment.topCenter,
                    // ),
                  ),
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  width: double.maxFinite,
                  child: Center(
                    child: CustomText(
                      title: readBook![index!]['title'],
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
                padding: const EdgeInsets.all(20),
                child: OrgChannel(
                  orgChannel: readBook,
                  index: index,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Contents(
                  content: readBook,
                  index: index,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: vote(context),
              ),
            ),
          ],
        ),
        // appBar: wetekaAppBar(context,
        //     isImg: false,
        //     isMenu: false,
        //     isSearch: true,
        //     isBell: false,
        //     isExpanded: false,
        //     isScan: false),
        // body: SingleChildScrollView(
        //   physics: const BouncingScrollPhysics(),
        //   child: Padding(
        //     padding: const EdgeInsets.only(left: 18, right: 18),
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         OrgChannel(
        //           orgChannel: readBook,
        //           index: index,
        //         ),
        //         concept(context),
        //         vote(context),
        //       ],
        //     ),
        //   ),
        // ),
      ),
    );
  }

  // Widget concept(BuildContext context) {
  //   return Column(
  //     children: [
  //       const SizedBox(
  //         height: 25,
  //       ),
  //       CustomText(
  //         title: readBook![index!]['title'],
  //         isFontSize: false,
  //         fontSize: 16,
  //         color: const Color.fromARGB(255, 2, 28, 60),
  //       ),
  //       const SizedBox(
  //         height: 17,
  //       ),
  //       SizedBox(
  //         height: 200,
  //         width: MediaQuery.of(context).size.width,
  //         child: Card(
  //           clipBehavior: Clip.antiAliasWithSaveLayer,
  //           shape: RoundedRectangleBorder(
  //             borderRadius: BorderRadius.circular(10),
  //           ),
  //           elevation: 0,
  //           child: Image.network(
  //             readBook![index!]['owner']['avatar'],
  //             height: 200,
  //             width: MediaQuery.of(context).size.width,
  //             fit: BoxFit.cover,
  //           ),
  //         ),
  //       ),
  //       const SizedBox(
  //         height: 17,
  //       ),
  //       Contents(
  //         content: readBook,
  //         index: index,
  //       ),
  //       const SizedBox(
  //         height: 100,
  //       ),
  //     ],
  //   );
  // }

  Widget vote(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color.fromARGB(10, 2, 28, 60),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  title: 'Do you think the article is useful?',
                  isBold: false,
                  isFontSize: false,
                  fontSize: 16,
                  color: Color.fromARGB(227, 2, 28, 60),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: IconButton(
                        icon: const Icon(LucideIcons.thumbsUp),
                        onPressed: () {},
                      ),
                    ),
                    IconButton(
                      icon: const Icon(LucideIcons.thumbsDown),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
