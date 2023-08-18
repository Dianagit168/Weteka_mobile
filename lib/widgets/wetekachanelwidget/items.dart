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