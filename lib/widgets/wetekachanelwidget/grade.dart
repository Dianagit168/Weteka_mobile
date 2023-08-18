import 'package:weteka/index.dart';
import 'package:weteka/widgets/customtext.dart';

import 'items.dart';

class Grade extends StatelessWidget {
  const Grade({
    Key? key,
    this.isTit = true,
    this.tit,
  }) : super(key: key);
  final bool? isTit;
  final String? tit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 17),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomText(
                title: 'Grade',
              ),
              TextButton(
                onPressed: () {},
                child: const Text('See all'),
              )
            ],
          ),
          const Items(),
        ],
      ),
    );
  }
}
