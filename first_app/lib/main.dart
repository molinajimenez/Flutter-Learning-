import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
/*Private class that contains the Widgets, this is done exclusively when we are
building stateful widgets

If you're building stateless, just extend StatelessWidget and implement in
normal class!
*/
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('First Flutter App!'),
      ),
      body: Column(children: [
        Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
              child: Text("Add Random Image"),
              onPressed: () {},
            )),
        Card(
          child: Column(
            children: <Widget>[
              Image.asset('assets/random_image.jpg'),
              Text("Random Image")
            ],
          ),
        )
      ]),
    ));
  }
}
