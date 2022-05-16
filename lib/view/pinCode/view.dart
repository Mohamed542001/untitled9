import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:untitled9/view/NavigationView/view.dart';
import 'package:untitled9/view/newAccount/component/BuildNewAccTitle.dart';
import 'package:untitled9/widgets/DefaultButton.dart';
import 'package:untitled9/widgets/MyText.dart';

class BinCodeView extends StatelessWidget {
  const BinCodeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(15),
          decoration: new BoxDecoration(

            image: new DecorationImage(
              image: new AssetImage("assets/images/loola.jpg",),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NewAccountTitle(),
              SizedBox(
                height: 30,
              ),
              PinCodeTextField(
                  appContext: context,
                  length: 5,
                  backgroundColor:Color.fromARGB(0, 0, 0, 0),
                  onChanged: (value){
                    print(value);
                  },

                pinTheme: PinTheme(
                  fieldHeight: 60,
                  fieldWidth: 60,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),


                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomText(
                    title: 'لم تستلم الكود؟',
                    color: Colors.white,
                    size: 18,
                  ),
                  TextButton(
                      onPressed: (){},
                      child: Text(
                        'إعادة الارسال',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                  ),
                ],
              ),
              DefaultButton(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const MainPage()),
                  );
                },
                title: 'انتهيت',
                color: Colors.pinkAccent,
                textColor: Colors.white,
                borderRadius: BorderRadius.circular(0),
                borderColor: Colors.pinkAccent,
                margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
