import 'package:weteka/index.dart';

class Course extends StatelessWidget {
  const Course({Key? key, this.isTit = true, this.tit, this.padVal})
      : super(key: key);
  final bool? isTit;
  final String? tit;
  final double? padVal;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: isTit! ? padVal! : 0),
          child: isTit!
              ? Text(
                  tit!,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 2, 28, 60)),
                )
              : const Text(
                  '',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 2, 28, 60)),
                ),
        ),
        SizedBox(
          height: isTit! ? 15 : 0,
        ),
        GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            // mainAxisSpacing: 15, //គម្លាតលើក្រោម
            // crossAxisSpacing: 11, //គម្លាតឆ្វេងស្តាំ
            mainAxisExtent: 260, //​ទំហំផ្ទៃ
          ),
          itemCount: listcourse.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Card(
                  elevation: 0,
                  semanticContainer: false,
                  child: Image.asset(
                    '${listcourse[index].img}',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 240, top: 3, bottom: 3),
                  child: Text(
                    "${listcourse[index].tit}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Color.fromARGB(216, 2, 28, 60)),
                  ),
                ),
                Row(
                  children: [
                    Image.asset('${listcourse[index].subimg}'),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 12,
                          ),
                          child: Text(
                            "${listcourse[index].tit2}",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                                color: Color.fromARGB(155, 2, 28, 60)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 38),
                          child: Text(
                            "${listcourse[index].subTit}",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 9,
                                color: Color.fromARGB(67, 2, 28, 60)),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    if (index == 4)
                      Row(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: isTit!
                                  ? Container()
                                  : Image.asset('assets/images/like.png')),
                          isTit!
                              ? Container()
                              : Image.asset('assets/images/dislike.png'),
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
