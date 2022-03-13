
import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/second_page.dart';
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('First'),
        ),
        body: ElevatedButton(
          child: const Text('Next'),
          onPressed: () async {
            final person = Person('kildong', 20);
            final result = await Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> SecondPage(person:person))
            );
            print(result.age);
          },
        )
    );
  }
}