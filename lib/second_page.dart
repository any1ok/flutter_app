import 'package:flutter/material.dart';

import 'main.dart';

class SecondPage extends StatelessWidget {

  final Person? person;

  SecondPage({@required this.person});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Second'),
        ),
        body: ElevatedButton(
          child: const Text('Previous'),
          onPressed: () {
            Navigator.pop(context,person);
          },
        )
    );
  }
}
