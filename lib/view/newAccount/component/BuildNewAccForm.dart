import 'package:flutter/material.dart';

class NewAccountForm extends StatelessWidget {
  const NewAccountForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(

                  keyboardType: TextInputType.name,

                  decoration: InputDecoration(
                    labelText: 'الاسم الاول',
                    labelStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.pinkAccent,
                        fontWeight: FontWeight.bold
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide:BorderSide(color: Colors.pinkAccent,width: 2)
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide:BorderSide(color: Colors.pinkAccent,width: 2)
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15,),
              Expanded(
                child: TextFormField(

                  keyboardType: TextInputType.name,

                  decoration: InputDecoration(
                    labelText: 'الاسم الثاني',
                    labelStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.pinkAccent,
                        fontWeight: FontWeight.bold
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide:BorderSide(color: Colors.pinkAccent,width: 2)
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide:BorderSide(color: Colors.pinkAccent,width: 2)
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(

            keyboardType: TextInputType.emailAddress,

            decoration: InputDecoration(
              labelText: 'البريد الالكتروني',
              labelStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.bold
              ),
              enabledBorder: UnderlineInputBorder(
                  borderSide:BorderSide(color: Colors.pinkAccent,width: 2)
              ),
              focusedBorder: UnderlineInputBorder(
                  borderSide:BorderSide(color: Colors.pinkAccent,width: 2)
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: NewAccData().passwordController,
            keyboardType: TextInputType.visiblePassword,
            obscureText: NewAccData().passwordVisible,
            decoration: InputDecoration(
              labelText: 'كلمة المرور',
              labelStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.bold
              ),
              enabledBorder: UnderlineInputBorder(
                  borderSide:BorderSide(color: Colors.pinkAccent,width: 2)
              ),
              focusedBorder: UnderlineInputBorder(
                  borderSide:BorderSide(color: Colors.pinkAccent,width: 2)
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: NewAccData().passwordController,
            keyboardType: TextInputType.visiblePassword,
            obscureText: NewAccData().confirmPasswordVisible,
            decoration: InputDecoration(
              labelText: 'نأكيد كلمة المرور',
              labelStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.bold
              ),
              enabledBorder: UnderlineInputBorder(
                  borderSide:BorderSide(color: Colors.pinkAccent,width: 2)
              ),
              focusedBorder: UnderlineInputBorder(
                  borderSide:BorderSide(color: Colors.pinkAccent,width: 2)
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(

            keyboardType: TextInputType.text,

            decoration: InputDecoration(
              labelText: 'العنوان',
              labelStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.bold
              ),
              enabledBorder: UnderlineInputBorder(
                  borderSide:BorderSide(color: Colors.pinkAccent,width: 2)
              ),
              focusedBorder: UnderlineInputBorder(
                  borderSide:BorderSide(color: Colors.pinkAccent,width: 2)
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

}

class NewAccData {
  bool passwordVisible=true;
  bool confirmPasswordVisible=true;

  final TextEditingController firstNameController=new TextEditingController();
  final TextEditingController secondNameController=new TextEditingController();
  final TextEditingController emailController=new TextEditingController();
  final TextEditingController passwordController=new TextEditingController();
  final TextEditingController confirmPasswordController=new TextEditingController();
  final TextEditingController phoneController=new TextEditingController();
  final TextEditingController addressController=new TextEditingController();

}
