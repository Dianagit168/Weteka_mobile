import '../../data/subsribchanel.dart';
import '../../index.dart';
import '../customtext.dart';

class Items extends StatelessWidget {
  const Items({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: gradeItem.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 11,
        mainAxisExtent: 120,
      ),
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
                color: Color.fromARGB(255, 0, 102, 255),
              ),
              child: Center(
                child: Text(
                  '${gradeItem[index].img}',
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            CustomText(
              title: '${gradeItem[index].userName}',
              isFontSize: false,
              fontSize: 11,
            )
          ],
        );
      },
    );
  }
}
//  const SizedBox(
//                   height: 5,
//                 ),
//                 CustomText(
//                   title: '${gradeItem[index].userName}',
//                   isFontSize: false,
//                   fontSize: 11,
//                 )




// return SizedBox(
//       height: 200,
//       width: MediaQuery.of(context).size.width,
//       child: ListView.builder(
//         shrinkWrap: true,
//         scrollDirection: Axis.horizontal,
//         itemCount: 1,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.only(right: 10),
//             child: Column(
//               children: [
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   // height: 100,
//                   // width: 150,
//                   decoration: const BoxDecoration(
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(8),
//                     ),
//                     color: Color.fromARGB(255, 0, 102, 255),
//                   ),
//                   child: Center(
//                     child: Text(
//                       '${gradeItem[index].img}',
//                       style: const TextStyle(
//                         fontWeight: FontWeight.w500,
//                         fontSize: 20,
//                         color: Color.fromARGB(255, 255, 255, 255),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Text("Grade 9A")
//               ],
//             ),
//           );
//         },
//       ),
//     );


// import '../data/subsribchanel.dart';
// import '../index.dart';

// class SubScribChanel extends StatelessWidget {
//   const SubScribChanel({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 100,
//       width: MediaQuery.of(context).size.width,
//       child: Row(
//         children: [
//           Flexible(
//             child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               shrinkWrap: true,
//               itemCount: chanel.length,
//               itemBuilder: (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.only(right: 20),
//                   child: Column(
//                     children: [
//                       Stack(
//                         children: [
//                           Container(
//                             height: 70,
//                             width: 70,
//                             decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               // color: const Color.fromARGB(255, 2, 28, 60),
//                               image: DecorationImage(
//                                   image: AssetImage('${chanel[index].img}'),
//                                   filterQuality: FilterQuality.high,
//                                   fit: BoxFit.cover),
//                             ),
//                           ),
//                           if (index == 1 || index == 2 || index == 5)
//                             Positioned(
//                               left: 50,
//                               top: 55,
//                               child: Container(
//                                 height: 15,
//                                 width: 15,
//                                 decoration: const BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   color: Colors.white,
//                                 ),
//                                 child: Stack(
//                                   children: [
//                                     Positioned(
//                                       left: 1,
//                                       top: 1,
//                                       child: Container(
//                                         height: 12,
//                                         width: 12,
//                                         decoration: const BoxDecoration(
//                                           shape: BoxShape.circle,
//                                           color:
//                                               Color.fromARGB(255, 0, 102, 255),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                         ],
//                       ),
//                       const SizedBox(
//                         height: 3,
//                       ),
//                       Text(
//                         '${chanel[index].userName}',
//                         style: const TextStyle(
//                             fontWeight: FontWeight.bold,
//                             color: Color.fromARGB(255, 2, 28, 60),
//                             fontSize: 12),
//                       )
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//           const SizedBox(
//             width: 30,
//             child: Padding(
//               padding: EdgeInsets.only(left: 13, bottom: 23),
//               child: Text(
//                 'All',
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: Color.fromARGB(255, 2, 28, 60),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
