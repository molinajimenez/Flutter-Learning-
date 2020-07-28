import 'package:flutter/material.dart';

class RandomImages extends StatelessWidget{
  /*we add final to show Dart that we are going to make this property not change
  if new values are passed, this means that it will replace the value.
   */

  final List<String> randomImageTitle;
  /*this will take the randomImage private property and assign it the incoming
  value */
  RandomImages(this.randomImageTitle);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: randomImageTitle
          .map((element) => Card(
        child: Column(
          children: <Widget>[
            Image.asset('assets/random_image.jpg'),
            Text(element)
          ],
        ),
      ))
          .toList(), //transformed to list because children expects a list.
    );
  }

}