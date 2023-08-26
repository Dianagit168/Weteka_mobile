import 'package:weteka/index.dart';
import 'package:weteka/widgets/chanel_account_weteka.dart';
import 'package:weteka/widgets/contents.dart';

class SinglePageLKaset extends StatelessWidget {
  const SinglePageLKaset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: wetekaAppBar(context,
            isImg: false,
            isMenu: false,
            isSearch: true,
            isBell: false,
            isExpanded: false,
            isScan: false),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(left: 18, right: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ChanelAccountWeteka(),
                concept(context),
                vote(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget concept(BuildContext context) {
  return Column(
    children: [
      const SizedBox(
        height: 25,
      ),
      const CustomText(
        title: 'The healthy food for breackfast!',
        isFontSize: false,
        fontSize: 16,
        color: Color.fromARGB(255, 2, 28, 60),
      ),
      const SizedBox(
        height: 17,
      ),
      Image.asset('assets/images/Rectangle 43.png'),
      const SizedBox(
        height: 17,
      ),
      const Contents(),
      const SizedBox(
        height: 100,
      ),
    ],
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
                    child: Image.asset('assets/images/like.png'),
                  ),
                  Image.asset('assets/images/Dislike.png'),
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
