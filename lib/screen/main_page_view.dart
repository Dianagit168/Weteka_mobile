import '../index.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({Key? key}) : super(key: key);

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 750,
            width: double.infinity,
            child: PageView(
              controller: _controller,
              children: [
                const Page1(),
                const Page2(),
                Page3(),
              ],
            ),
          ),
          const Spacer(),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: const SlideEffect(
                spacing: 10.0,
                radius: 16.0,
                dotWidth: 13.0,
                dotHeight: 13.0,
                paintStyle: PaintingStyle.fill,
                dotColor: Color.fromARGB(255, 230, 230, 230),
                activeDotColor: Color.fromARGB(255, 0, 115, 255)),
          ),
          const SizedBox(
            height: 40,
          )
        ],
      ),
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
