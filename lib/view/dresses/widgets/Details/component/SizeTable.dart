import 'package:flutter/material.dart';

class SizeTableView extends StatelessWidget {
  const SizeTableView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Image.asset(
        'assets/images/SizeTable.jpeg',
        fit: BoxFit.fill,
      ),
    );
  }
}
