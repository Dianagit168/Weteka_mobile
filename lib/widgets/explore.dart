import 'package:weteka/index.dart';
import 'package:weteka/widgets/TextField_Custom.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key, this.content}) : super(key: key);
  final String? content;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Explore',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 2, 28, 60),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        TextFieldCustom(
          hintText: content!,
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
