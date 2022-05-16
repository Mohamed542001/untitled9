import 'package:flutter/material.dart';
import 'package:untitled9/widgets/MyText.dart';

class NewAccountTitle extends StatelessWidget {
  const NewAccountTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomText(
      title: 'Loola Store',
      color: Colors.white,
      size: 20,
      fontWeight: FontWeight.bold,
    );
  }
}
