import 'package:weteka/index.dart';
import 'package:weteka/widgets/ratestar.dart';

class Books extends StatelessWidget {
  const Books({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 322),
          child: Text(
            'Books',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 2, 28, 60)),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 15, //គម្លាតលើក្រោម
            crossAxisSpacing: 11, //គម្លាតឆ្វេងស្តាំ
            mainAxisExtent: 260, //​ទំហំផ្ទៃ
          ),
          itemCount: listLibrary.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Image.asset(
                  '${listLibrary[index].img}',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Row(
                  children: const [
                    RateStar(),
                    RateStar(),
                    RateStar(),
                    RateStar(
                      isBlue: false,
                    ),
                    RateStar(
                      isBlue: false,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, top: 3, bottom: 3),
                  child: Text(
                    "${listLibrary[index].tit}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Color.fromARGB(216, 2, 28, 60)),
                  ),
                ),
                Row(
                  children: [
                    Image.asset('${listLibrary[index].subimg}'),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          "${listLibrary[index].tit2}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Color.fromARGB(155, 2, 28, 60)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 38),
                          child: Text(
                            "${listLibrary[index].subTit}",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 9,
                                color: Color.fromARGB(67, 2, 28, 60)),
                          ),
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
