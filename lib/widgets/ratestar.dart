

import '../index.dart';

class RateStar extends StatelessWidget {
  const RateStar({Key? key, this.isBlue = true}) : super(key: key);
  final bool? isBlue;

  @override
  Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 3,right: 3,top: 3,bottom: 4),
    child: isBlue!? Image.asset('assets/images/Star_blue.png'):Image.asset('assets/images/Star_grey.png'),
  );
    
  }
}