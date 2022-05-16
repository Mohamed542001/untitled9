import 'package:flutter/material.dart';

class DressImages extends StatelessWidget {
  const DressImages({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: PageView(
        children: [
          Image.asset('assets/images/dress1.jpg',fit: BoxFit.fill,),
          Image.asset('assets/images/clothes2.jpg',fit: BoxFit.fill,),
        ],
      ),
    );
  }
}
