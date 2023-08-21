import '../../index.dart';
import '../../widgets/customtext.dart';

class Chanel extends StatelessWidget {
  const Chanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
// child: Container(
//                 height: 55,
//                 width: 55,
//                 
//               ),
