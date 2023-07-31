import 'package:flutter/material.dart';

import '../widgets/page1.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({Key? key}) : super(key: key);

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(children: const [
        Page1(),
        Page1(),
        Page1(),
      ]),
    );
  }
}

// body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(
//               height: 500,
//               width: double.infinity,
//               //color: Colors.amber,
//               child: PageView.builder(
//                 itemCount: listDataPage.length,
//                 itemBuilder: (context, index) {
//                   return Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Image.asset('${listDataPage[index].img}'),
//                       Text('${listDataPage[index].tit}'),
//                       Text('${listDataPage[index].subTit}'),
//                       Text('${listDataPage[index].subTit2}'),
//                     ],
//                   );
//                 },
//               ),
//             )
//           ],
//         ),
//       ),
