import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:weteka/index.dart';

class SinglePageBookReading extends StatelessWidget {
  const SinglePageBookReading({Key? key, this.readTheBook, this.index})
      : super(key: key);
  final List<dynamic>? readTheBook;
  final int? index;

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
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: SfPdfViewer.network(
                readTheBook![index!]["file"],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
