import '../index.dart';
import 'books.dart';
import 'category.dart';
import 'explore.dart';

class LibraryBody extends StatelessWidget {
  const LibraryBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              Explore(
                hintText: 'Find your book',
              ),
              Ctegory(),
              Books(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
