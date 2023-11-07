import 'package:weteka/domain/usecase/data_uc_impl.dart';
import 'package:weteka/index.dart';

import 'package:weteka/presentation/screen/singlepage_book/singlepage_book.dart';
import 'package:weteka/presentation/screen/utils/app_colors.dart';

class SeeAllBookScreen extends StatelessWidget {
  SeeAllBookScreen({super.key});
  final FetchDataUcImpl fetchDataUcImpl = FetchDataUcImpl();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: wetekaAppBar(context, isBell: false, isExpanded: false),
      ),
    );
  }
}
