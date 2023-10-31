import 'package:weteka/presentation/screen/utils/app_colors.dart';

import '../index.dart';

class InputInformation extends StatelessWidget {
  const InputInformation({
    Key? key,
    this.tit,
    this.preIcon,
    this.sufIcon,
    required this.isSuf,
    this.titAlign,
  }) : super(key: key);
  final String? tit;
  final Icon? preIcon;
  final Icon? sufIcon;
  final bool isSuf;
  final double? titAlign;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: titAlign!),
          child: Row(
            children: [
              Text(
                tit!,
                style:
                    TextStyle(color: hexaCodeToColor(AppColor.primaryColor30)),
              ),
              const SizedBox(
                width: 3,
              ),
              const Text(
                '*',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        Container(
          height: 45,
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
              border:
                  Border.all(color: hexaCodeToColor(AppColor.primaryColor1)),
              borderRadius: const BorderRadius.all(Radius.circular(16))),
          child: TextField(
            cursorColor: hexaCodeToColor(AppColor.primaryColor1),
            style: const TextStyle(
              fontSize: 17,
            ),
            textAlign: TextAlign.start,
            keyboardType: TextInputType.none,
            decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: preIcon!,
                suffixIcon: isSuf ? sufIcon! : null),
          ),
        ),
      ],
    );
  }
}
