import 'package:weteka/index.dart';
import 'package:weteka/widgets/contents.dart';

class SinglePageBookReading extends StatelessWidget {
  const SinglePageBookReading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: wetekaAppBar(context,
            isImg: false,
            isScan: false,
            isMenu: true,
            isSearch: true,
            isBell: false),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color.fromARGB(10, 2, 28, 60),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Contents(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
