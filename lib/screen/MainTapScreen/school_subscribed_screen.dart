import 'package:weteka/data/subsribchanel.dart';
import 'package:weteka/index.dart';

class SchoolSubscribedScreen extends StatelessWidget {
  const SchoolSubscribedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          appBar: wetekaAppBar(context),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SafeArea(
                child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                child: Column(
                  children: [
                    subscribChanel(context),
                    const Course(
                      isTit: false,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            )),
          )),
    );
  }

  Widget subscribChanel(BuildContext context) {
    return SizedBox(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Flexible(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: chanel.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              // color: const Color.fromARGB(255, 2, 28, 60),
                              image: DecorationImage(
                                  image: AssetImage('${chanel[index].img}'),
                                  filterQuality: FilterQuality.high,
                                  fit: BoxFit.cover),
                            ),
                          ),
                          if (index == 1 || index == 2 || index == 5)
                            Positioned(
                              left: 50,
                              top: 55,
                              child: Container(
                                height: 15,
                                width: 15,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 1,
                                      top: 1,
                                      child: Container(
                                        height: 12,
                                        width: 12,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromARGB(255, 0, 102, 255),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        '${chanel[index].userName}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 2, 28, 60),
                            fontSize: 12),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            width: 30,
            child: Padding(
              padding: EdgeInsets.only(left: 13, bottom: 23),
              child: Text(
                'All',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 2, 28, 60),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
