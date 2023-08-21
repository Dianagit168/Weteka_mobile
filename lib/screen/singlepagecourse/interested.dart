import 'package:weteka/index.dart';

import '../../data/category.dart';

class Interested extends StatelessWidget {
  const Interested({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color.fromARGB(162, 228, 228, 228),
              ),
              child: Row(
                children: [
                  Image.asset('assets/images/fav.png'),
                  const SizedBox(
                    width: 7,
                  ),
                  Text(
                    category[index],
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
}
