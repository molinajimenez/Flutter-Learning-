import 'package:flutter/material.dart';

import './random_images.dart';
class RandomManager extends StatefulWidget {
  final String startRandom;
  RandomManager(this.startRandom);

  @override
  State<StatefulWidget> createState() {
    return _RandomManager();
  }
}

class _RandomManager extends State<RandomManager> {
  List<String> _randomImageTitle = [];
  @override
  void initState() {
    /*widget gets access to properties of StateFulWidget.
    * that's how we can obtain the value of the constructor when we want to
    * pass DATA to a stateful component.*/
    _randomImageTitle.add(widget.startRandom);
    //leave this line at the end
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Column(children: [Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          child: Text("Add Random Image"),
          onPressed: () {
            setState(() {
              _randomImageTitle.add("Star Wars poster");
            });
          },
        )),
      RandomImages(_randomImageTitle)],
    );
  }

}
