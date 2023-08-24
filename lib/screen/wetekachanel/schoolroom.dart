import '../../data/subsribchanel.dart';
import '../../index.dart';

class SchoolRoom extends StatelessWidget {
  const SchoolRoom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20,
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: gradeItem.length,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 170,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(21, 0, 102, 255),
                    ),
                    child: Center(
                      child: CustomText(
                        title: '${gradeItem[index].img}',
                        isFontSize: false,
                        fontSize: 23,
                        color: Color.fromARGB(255, 2, 28, 60),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: CustomText(
                      title: '${gradeItem[index].userName}',
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
