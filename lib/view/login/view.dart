import 'package:flutter/material.dart';
import 'component/LoginButtons.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(image: new AssetImage("assets/images/loola.jpg"), fit: BoxFit.cover,),
      ),

      child: Container(
        margin: EdgeInsets.symmetric(vertical: 40 ),
        child: LoginButtons(),
      ),
    );
  }
}
