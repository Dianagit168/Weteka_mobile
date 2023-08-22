import 'package:weteka/index.dart';

class ProfileAbout extends StatelessWidget {
  const ProfileAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: wetekaAppBar(
          context,
          isImg: false,
          title: 'Menu',
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [

              coverAbout(context),

              tapbarProfile(context),

            ]
          )
        ),
      ),
    );
  }

  Widget coverAbout(BuildContext context){
    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 250,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Image.asset('assets/images/Rectangle 30.png'),
          ),
        ),
        Positioned(
            top: 120,
            left: 30,
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 0, 115, 255),
                  ),
                  child: Image.asset(
                    'assets/images/Ellipse 4.png',
                    fit: BoxFit.cover,
                  ),
                ),
                // const Padding(
                //   padding: EdgeInsets.only(top: 7),
                //   child: CustomText(
                //     title: 'Diana',
                //   ),
                // )
              ],
            )
          )
      ],
    );
  }

  Widget tapbarProfile(BuildContext context){
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
                  labelStyle: const TextStyle(fontWeight: FontWeight.bold),
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
                    ProfileOwned(),
                    ProfileFollowing(),
                    ProfileEnrollment(),
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
