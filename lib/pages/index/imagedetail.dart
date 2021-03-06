import 'package:flutter/material.dart';

class ImageDetailWidget extends StatelessWidget {
  final List<String> list;
  final int currentIndex;
  final List<String> vid;

  ImageDetailWidget({this.list, this.currentIndex, this.vid});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PageView.builder(
        controller: PageController(initialPage: currentIndex),
        itemBuilder: (BuildContext context, int i) {
          return FittedBox(
            fit: BoxFit.fitWidth,
            //child: Hero(
              //tag: 'currentimage$i',
              child: Image.network(list[i]),
            //),
          );
        },
      ),


    );
  }
}
