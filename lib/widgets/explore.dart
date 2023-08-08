
import 'package:weteka/index.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return  Column(children: [
  const Padding(
                  padding: EdgeInsets.only(right: 322),
                  child: Text(
                    'Explore',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 2, 28, 60)),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 2, 28, 60),
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: const Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: TextField(
                      cursorColor: Color.fromARGB(255, 0, 115, 255),
                      style: TextStyle(
                        fontSize: 17,
                      ),
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.none,
                      decoration: InputDecoration(
                          hintText: 'Find your curses',
                          hintStyle: TextStyle(color:Color.fromARGB(105, 2, 28, 60),fontSize: 15 ),
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
  ],);
    
  }
}