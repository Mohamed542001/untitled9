import 'package:flutter/material.dart';
import 'package:untitled9/view/pinCode/view.dart';
import 'package:untitled9/widgets/DefaultButton.dart';
import 'package:untitled9/widgets/MyText.dart';

class NewAccountButtons extends StatelessWidget {
  const NewAccountButtons({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        DefaultButton(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const BinCodeView()),
            );
          },
          title: 'انشاء حساب',
          color: Colors.pinkAccent,
          textColor: Colors.white,
          borderRadius: BorderRadius.circular(0),
          borderColor: Colors.pinkAccent,
          margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        ),
        SizedBox(
          height: 20,
        ),
        CustomText(
          title: 'أو',
          color: Colors.white,
        ),
        InkWell(
          onTap: (){
            Navigator.of(context).pop();

          },
          child: CustomText(
            title: 'تسجيل الدخول',
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
