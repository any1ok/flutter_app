import 'package:flutter/material.dart';

import 'main.dart';
//
// class SecondPage extends StatelessWidget {
//
//
//   @override
//   Widget build(BuildContext context) {
//     print('secondpage');
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Second'),
//         ),
//         body: ElevatedButton(
//           child: const Text('Previous'),
//           onPressed: () {
//             Navigator.pop(context,'ok');
//           },
//         )
//     );
//   }
// }

class SecondStatefulPage extends StatefulWidget {
  late final Person person;

  SecondStatefulPage({Key? key, required this.person}) : super(key: key);

  @override
  _SecondStatefulPageState createState() => _SecondStatefulPageState();
}

class _SecondStatefulPageState extends State<SecondStatefulPage> {
  @override
  Widget build(BuildContext context) {
    print('2');
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.person.name),
      ),
      body: ElevatedButton(
        child: Text('previous'),
        onPressed: (){
          Navigator.pop(context);
        },
      )
    );
  }
}


