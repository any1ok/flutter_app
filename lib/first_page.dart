
import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/second_page.dart';

//
// class FirstPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     print('FirsPage');
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('First'),
//         ),
//         body: ElevatedButton(
//           child: const Text('Next'),
//           onPressed: () async {
//             final result = await Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => SecondPage())
//             );
//             print(result);
//           },
//         )
//     );
//   }
// }

class FirstStatefulPage extends StatefulWidget {
  @override
  _FirstStatefulPageState createState() => _FirstStatefulPageState();
}

class _FirstStatefulPageState extends State<FirstStatefulPage> {
  @override
  Widget build(BuildContext context) {
    print('1');
    return Scaffold(
      appBar: AppBar(
        title: Text('First'),
      ),
      body: ElevatedButton(
        child: Text('Next'),
        onPressed: (){
          final person = Person('killdong',20);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondStatefulPage( person: person,))
          );
        },
      ),
    );
  }
}
