import 'package:flutter/material.dart';
import 'package:untitled9/widgets/DefaultButton.dart';

class BuildAddButton extends StatelessWidget {
  const BuildAddButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: DefaultButton(
        title: 'إضافة الي السلة',
        color: Colors.pinkAccent,
        onTap: (){},
        elev: 0,

      ),
    );
  }
}
