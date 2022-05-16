import 'package:flutter/material.dart';
import 'package:untitled9/view/NavigationView/view.dart';
import 'package:untitled9/view/newAccount/view.dart';
import 'package:untitled9/widgets/DefaultButton.dart';

class LoginButtons extends StatelessWidget {
  const LoginButtons({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        DefaultButton(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const MainPage()),
            );
          },
          title: 'تسجيل الدخول',
          color: Colors.pinkAccent,
          textColor: Colors.white,
          borderRadius: BorderRadius.circular(0),
          borderColor: Colors.pinkAccent,
          margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        ),
        DefaultButton(
          color: Colors.white ,
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) =>  NewAccount()),
            );
          },
          title: 'إنشاء حساب',
          textColor: Colors.pinkAccent,
          borderRadius: BorderRadius.circular(0),
          borderColor: Colors.pinkAccent,
          margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        ),
      ],
    );
  }
}
