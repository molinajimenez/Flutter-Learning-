import 'package:flutter/material.dart';

import './random_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
/*Private class that contains the Widgets, this is done exclusively when we are
building stateful widgets

If you're building stateless, just extend StatelessWidget and implement in
normal class!
*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('First Flutter App!'),
      ),
      body: RandomManager("Homer Simpson!"),
    ));
  }
}
