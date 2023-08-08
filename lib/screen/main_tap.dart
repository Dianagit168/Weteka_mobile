import 'package:weteka/widgets/homepage.dart';

import '../index.dart';

class MainTap extends StatelessWidget {
  const MainTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: Stack(alignment: AlignmentDirectional.bottomCenter, children: [
          TabBarView(
            children: [
              const Homepage(),
              Container(
                color: Colors.pink,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.purple,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.blue,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.black,
                width: 100,
                height: 100,
              ),
            ],
          ),
          //   height: 70,
          //   width: double.infinity,
          // Container(
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //     border: Border.all(
          //       color: const Color.fromARGB(137, 2, 28, 60),
          //     ),
          //     borderRadius:
          //         const BorderRadius.vertical(top: Radius.circular(24)),
          //   ),
          //   child: const TabBar(
          //     padding: EdgeInsets.all(13),
          //     indicatorSize: TabBarIndicatorSize.label,
          //     indicatorColor: Color.fromARGB(255, 0, 102, 255),
          //     indicatorWeight: 5,
          //     unselectedLabelColor: Color.fromARGB(137, 2, 28, 60),
          //     labelColor: Color.fromARGB(255, 0, 102, 255),
          //     tabs: [
          //       Tab(
          //         icon: Icon(
          //           Icons.home,
          //           size: 30,
          //         ),
          //       ),
          //       Tab(
          //         icon: Icon(
          //           Icons.bookmarks,
          //           size: 25,
          //         ),
          //       ),
          //       Tab(
          //         icon: Icon(
          //           Icons.slow_motion_video_outlined,
          //           size: 30,
          //         ),
          //       ),
          //       Tab(
          //         icon: Icon(
          //           Icons.video_collection_outlined,
          //           size: 27,

          //         ),
          //       ),
          //       Tab(
          //         icon: Icon(
          //           Icons.menu,
          //           size: 27,

          //         ),
          //       )
          //     ],
          //   ),
          // ),
        ]),
        bottomNavigationBar:
            BottomNavigationBar(selectedItemColor: Colors.blue, items: [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.video_collection_outlined,
              size: 27,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.video_collection_outlined,
              size: 27,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.video_collection_outlined,
              size: 27,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.video_collection_outlined,
              size: 27,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.video_collection_outlined,
              size: 27,
              color: Colors.black,
            ),
          )
        ]),
      ),
    );
  }
}
