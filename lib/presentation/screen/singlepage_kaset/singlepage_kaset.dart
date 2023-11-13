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
      ),
    );
  }

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
