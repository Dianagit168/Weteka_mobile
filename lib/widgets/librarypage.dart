import 'package:weteka/index.dart';
import 'package:weteka/widgets/librarybody.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: wetekaAppBar(context, isSearch: false),
        body: const LibraryBody(),
      ),
    );
  }
}
