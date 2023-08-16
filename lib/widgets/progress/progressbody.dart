import 'package:weteka/index.dart';

class ProgressBody extends StatelessWidget {
  const ProgressBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: progressData.length,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 260,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Card(
                  elevation: 0,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.asset(
                        '${progressData[index].img}',
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        height: 40,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(10),
                          ),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(0, 2, 28, 60),
                              Color.fromARGB(199, 2, 28, 60),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Image.asset(
                            '${progressData[index].taskbar}',
                            width: double.infinity,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 200, top: 3, bottom: 3),
                  child: Text(
                    "${progressData[index].tit}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Color.fromARGB(216, 2, 28, 60)),
                  ),
                ),
                Row(
                  children: [
                    Image.asset('${progressData[index].subimg}'),
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
                            "${progressData[index].tit2}",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                                color: Color.fromARGB(155, 2, 28, 60)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 38),
                          child: Text(
                            "${progressData[index].subTit}",
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
            ),
          );
        },
      ),
    );
  }
}
// return Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Container(
//                   color: Colors.amber,
//                   child: Stack(
//                     alignment: Alignment.bottomCenter,
//                     children: [
//                       Card(
//                         elevation: 0,
//                         child: Image.asset(
//                           '${progressData[index].img}',
//                           width: double.infinity,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       Positioned(
//                         child: Image.asset(
//                           '${progressData[index].taskbar}',
//                           width: double.infinity,
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(right: 230, top: 3, bottom: 3),
//                   child: Text(
//                     "${progressData[index].tit}",
//                     style: const TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 14,
//                         color: Color.fromARGB(216, 2, 28, 60)),
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     Image.asset('${progressData[index].subimg}'),
//                     const SizedBox(
//                       width: 10,
//                     ),
//                     Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(
//                             right: 12,
//                           ),
//                           child: Text(
//                             "${progressData[index].tit2}",
//                             style: const TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 11,
//                                 color: Color.fromARGB(155, 2, 28, 60)),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(right: 38),
//                           child: Text(
//                             "${progressData[index].subTit}",
//                             style: const TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 9,
//                                 color: Color.fromARGB(67, 2, 28, 60)),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           );