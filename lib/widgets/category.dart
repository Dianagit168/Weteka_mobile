import '../data/category.dart';
import '../index.dart';

class Ctegory extends StatelessWidget {
  const Ctegory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 300, top: 8),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 2, 28, 60)),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
        SizedBox(
          height: 35,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: category.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(right: 10),
                width: 95,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  color: Color.fromARGB(24, 0, 115, 255),
                ),
                child: Center(
                  child: Text(
                    category[index],
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 102, 255),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(
                  height: 15,
                ),
      ],
    );
  }
}

