
import '../index.dart';

class Kaset extends StatelessWidget {
  const Kaset({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Row(
                  children: [
                    const Text(
                      'Kaset ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 2, 28, 60)),
                    ),
                    const Spacer(),
                    TextButton(onPressed: () {}, child: const Text('See all'))
                  ],
                ),
        SizedBox(
          height: 160,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: listKaset.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                      margin: const EdgeInsets.only(right: 10),
                      width: 150,
                      decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.circular(12)),
                        color: Color.fromARGB(24, 0, 115, 255),
                      ),
                      child: Image.asset(
                          '${listKaset[index].img}')),
                  const SizedBox(
                    height: 7,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Text(
                      "${listKaset[index].tit}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Color.fromARGB(216, 2, 28, 60)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 50, top: 10),
                    child: Row(
                      children: [
                        Image.asset(
                            '${listKaset[index].subimg}'),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text(
                              "${listKaset[index].tit2}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                  color:
                                      Color.fromARGB(155, 2, 28, 60)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 25),
                              child: Text(
                                "${listKaset[index].subTit}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 9,
                                    color:
                                        Color.fromARGB(67, 2, 28, 60)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}



