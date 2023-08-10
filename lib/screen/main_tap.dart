import '../index.dart';

class MainTap extends StatelessWidget {
  const MainTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: Stack(alignment: AlignmentDirectional.bottomCenter, children: [
          const TabBarView(
            children: [
              Homepage(),
              LibraryPage(),
              CoursePage(),
              SchoolSubscribedPage(),
              SettingPage(),
            ],
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: const Color.fromARGB(248, 248, 251, 255),
              border: Border.all(
                color: const Color.fromARGB(137, 2, 28, 60),
              ),
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(24)),
            ),
            child: const TabBar(
              padding: EdgeInsets.all(10),
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Color.fromARGB(255, 0, 102, 255),
              indicatorWeight: 5,
              unselectedLabelColor: Color.fromARGB(137, 2, 28, 60),
              labelColor: Color.fromARGB(255, 0, 102, 255),
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    size: 27,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.bookmarks,
                    size: 24,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.slow_motion_video_outlined,
                    size: 27,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.video_collection_outlined,
                    size: 26,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.menu,
                    size: 26,
                  ),
                )
              ],
            ),
          ),
        ]),
        // bottomNavigationBar:
        //     BottomNavigationBar(
        //     selectedItemColor: Colors.blue, items: [
        //   BottomNavigationBarItem(
        //     label: "",
        //     icon: Icon(
        //       Icons.video_collection_outlined,
        //       size: 27,
        //       color: Colors.black,
        //     ),
        //   ),
        //   BottomNavigationBarItem(
        //     label: "",
        //     icon: Icon(
        //       Icons.video_collection_outlined,
        //       size: 27,
        //       color: Colors.black,
        //     ),
        //   ),
        //   BottomNavigationBarItem(
        //     label: "",
        //     icon: Icon(
        //       Icons.video_collection_outlined,
        //       size: 27,
        //       color: Colors.black,
        //     ),
        //   ),
        //   BottomNavigationBarItem(
        //     label: "",
        //     icon: Icon(
        //       Icons.video_collection_outlined,
        //       size: 27,
        //       color: Colors.black,
        //     ),
        //   ),
        //   BottomNavigationBarItem(
        //     label: "",
        //     icon: Icon(
        //       Icons.video_collection_outlined,
        //       size: 27,
        //       color: Colors.black,
        //     ),
        //   )
        // ]),
      ),
    );
  }
}
