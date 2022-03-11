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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tab'),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.tag_faces)),
                Tab(text: '메뉴2'),
                Tab(icon: Icon(Icons.info),text: '메뉴3'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(color: Colors.yellow,),
              Container(color: Colors.orange,),
              Container(color: Colors.red,),
            ],
          ),
        )
    );
  }
}

