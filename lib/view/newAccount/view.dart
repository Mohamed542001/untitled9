import 'package:flutter/material.dart';

import 'component/BuildNewAccButtons.dart';
import 'component/BuildNewAccForm.dart';
import 'component/BuildNewAccTitle.dart';

class NewAccount extends StatelessWidget {
  const NewAccount({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/loola.jpg'),
              fit: BoxFit.fill
          ),
        ),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  NewAccountTitle(),
                  SizedBox(
                    height: 20,
                  ),
                  NewAccountForm(),
                  NewAccountButtons(),

                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}

class NewAccData {

}
