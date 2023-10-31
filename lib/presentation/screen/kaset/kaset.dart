import 'package:weteka/index.dart';

class KasetScreen extends StatelessWidget {
  const KasetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: wetekaAppBar(
          context,
          isImg: false,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(left: 18, right: 18),
            child: Column(children: [
              ListView.builder(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: kasetListData.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 260,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          elevation: 0,
                          child: Image.asset(
                            '${kasetListData[index].img}',
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3, bottom: 3),
                          child: Text(
                            "${kasetListData[index].tit}",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Color.fromARGB(216, 2, 28, 60)),
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset('${kasetListData[index].subimg}'),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${kasetListData[index].tit2}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11,
                                      color: Color.fromARGB(155, 2, 28, 60)),
                                ),
                                Text(
                                  "${kasetListData[index].subTit}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 9,
                                      color: Color.fromARGB(67, 2, 28, 60)),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                Image.asset('assets/images/like.png'),
                                const SizedBox(
                                  width: 20,
                                ),
                                Image.asset('assets/images/Dislike.png'),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
