import 'package:weteka/index.dart';

class SinglePageCourse extends StatelessWidget {
  const SinglePageCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              video(context),
              chanel(context),
              interested(context),
              listVideo(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget video(BuildContext context) {
  return Stack(
    alignment: Alignment.topCenter,
    children: [
      SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 300,
        child: Column(
          children: [
            Image.asset(
              'assets/images/yt.png',
              width: MediaQuery.of(context).size.width,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    title: 'What is Weteka? Is it help our new generations?',
                    isFontSize: false,
                    fontSize: 17,
                    color: Color.fromARGB(255, 2, 28, 60),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      Text('1.2K views'),
                      Text(' - 2 month ago'),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      Container(
        height: 70,
        width: 70,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromARGB(155, 118, 142, 171),
        ),
        child: Image.asset(
          'assets/images/big_play.png',
        ),
      )
    ],
  );
}

Widget chanel(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 18),
    child: ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Stack(
        children: [
          Container(
            height: 55,
            width: 55,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
          ),
          Positioned(
            child: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.pink,
              ),
              child: Image.asset(
                'assets/images/Group 42.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 30,
            child: Image.asset(
              'assets/images/verified.png',
            ),
          ),
        ],
      ),
      title: Row(
        children: [
          const CustomText(title: 'Wetwka official'),
          const SizedBox(
            width: 10,
          ),
          const CustomText(title: '.'),
          TextButton(
            onPressed: () {},
            child: const Text('Follow'),
          )
        ],
      ),
      subtitle: const Text('1.2K followers'),
    ),
  );
}

Widget interested(BuildContext context) {
  return SizedBox(
    height: 35,
    child: ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: interestedData.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Container(
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color.fromARGB(162, 228, 228, 228),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('${interestedData[index].img}'),
                const SizedBox(
                  width: 7,
                ),
                Text(
                  '${interestedData[index].tit}',
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 2, 28, 60),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}

Widget listVideo(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 20, left: 18, right: 18),
    child: SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: listVideoData.length,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: const Color.fromARGB(80, 0, 115, 255),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Image.asset('${listVideoData[index].img}'),
            ),
            title: CustomText(
              title: '${listVideoData[index].tit}',
              isFontSize: false,
              isBold: false,
              fontSize: 15,
              color: const Color.fromARGB(210, 2, 28, 60),
            ),
            subtitle: Row(
              children: [
                CustomText(
                  title: '${listVideoData[index].tit2}',
                  isFontSize: false,
                  isBold: false,
                  fontSize: 13,
                  color: const Color.fromARGB(121, 2, 28, 60),
                ),
                const CustomText(title: ' . '),
                CustomText(
                  title: '${listVideoData[index].subTit}',
                  isFontSize: false,
                  isBold: false,
                  fontSize: 13,
                  color: const Color.fromARGB(121, 2, 28, 60),
                ),
              ],
            ),
          );
        },
      ),
    ),
  );
}
