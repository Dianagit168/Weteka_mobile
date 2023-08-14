import 'package:weteka/widgets/customtext.dart';
import 'package:weteka/widgets/home.dart';

import '../index.dart';

class TapbarProfile extends StatelessWidget {
  const TapbarProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 8,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: DefaultTabController(
          length: 4,
          child: Column(
            children: [
              SizedBox(
                height: 30,
                width: MediaQuery.of(context).size.width,
                child: TabBar(
                  isScrollable: true,
                  physics: const ClampingScrollPhysics(),
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(76, 0, 102, 255),
                  ),
                  indicatorColor: const Color.fromARGB(255, 0, 102, 255),
                  unselectedLabelColor: const Color.fromARGB(255, 2, 28, 60),
                  labelColor: const Color.fromARGB(255, 0, 102, 255),
                  tabs: const [
                    Text('Home'),
                    Text('Owned'),
                    Text('Following'),
                    Text('Enrollment'),
                  ],
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    HomeProfile(),
                    CustomText(
                      title: '1',
                    ),
                    CustomText(
                      title: '1',
                    ),
                    CustomText(
                      title: '1',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
