import '../../index.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Descriptions',
          style: TextStyle(color: Color.fromARGB(158, 2, 28, 60)),
        ),
        Text(
          'Weteka is a virtual platform for students, teachers, and professionals to share their knowledge with other students. View or create lessons for free, as well as set up your own school with ease.',
          strutStyle: StrutStyle(height: 1.5),
          style: TextStyle(
            color: Color.fromARGB(93, 2, 28, 60),
          ),
        ),
      ],
    );
  }
}
