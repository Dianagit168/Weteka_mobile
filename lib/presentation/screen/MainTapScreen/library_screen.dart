import 'package:weteka/index.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({Key? key}) : super(key: key);

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          title: 'Books',
        ),
        const SizedBox(
          height: 15,
        ),
        GridView.builder(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 15, //គម្លាតលើក្រោម
            crossAxisSpacing: 10, //គម្លាតឆ្វេងស្តាំ
            mainAxisExtent: 250, //​ទំហំផ្ទៃ
          ),
          itemCount: listLibrary.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Image.asset(
                  '${listLibrary[index].img}',
                ),
                Row(
                  children: const [
                    RateStar(),
                    RateStar(),
                    RateStar(),
                    RateStar(isBlue: false),
                    RateStar(isBlue: false),
                  ],
                ),
                Expanded(
                  child: SizedBox(
                    width: (MediaQuery.of(context).size.width / 3) - 25,
                    child: Text(
                      "${listLibrary[index].tit}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Color.fromARGB(216, 2, 28, 60),
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Image.asset('${listLibrary[index].subimg}'),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${listLibrary[index].tit2}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Color.fromARGB(155, 2, 28, 60)),
                        ),
                        Text(
                          "${listLibrary[index].subTit}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 9,
                              color: Color.fromARGB(67, 2, 28, 60)),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            );
          },
        ),
        const SizedBox(
          height: 60,
        )
      ],
    );
  }
}
