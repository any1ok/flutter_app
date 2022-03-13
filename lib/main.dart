import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SilverListPage(),
    );
  }
}

class SilverListPage extends StatelessWidget {
  final _items = List.generate(50, (i) => ListTile(title: Text('NO.$i')));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight:  180.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Sliver'),
              background: Image.asset(
                'assets/sample.png',
                fit: BoxFit.cover,
              ),
            ),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.start))
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(_items),
          )
        ],
      ),
    );
  }
}



//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   var _size = 100.0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('DatePicker'),
//         actions: <Widget>[
//           IconButton(
//             onPressed: () {},
//             icon: Icon(Icons.home),
//           ),
//         ],
//       ),
//       body: Center(
//         child: GestureDetector(
//           onTap: (){
//             final random = Random();
//             setState((){
//               _size = random.nextInt(200).toDouble() +100;
//             });
//           },
//           child: AnimatedContainer(
//             duration: Duration(seconds: 1),
//             width: _size,
//             height: _size,
//             child:  Image.asset('assets/sample.png'),
//             curve: Curves.fastOutSlowIn,
//           ),
//         ),
//       )
//     );
//   }
// }

//
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('재목'),
//         ),
//         body: Center(
//           child: TextField(
//             decoration: InputDecoration(
//                 border: OutlineInputBorder(), labelText: '여기에 입력하세요'),
//           ),
//         )
//     );
//   }
// }
//
