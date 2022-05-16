import 'package:flutter/material.dart';
import 'package:untitled9/widgets/DefaultButton.dart';
import 'package:untitled9/widgets/MyText.dart';

class BuildSettingView extends StatefulWidget {
  const BuildSettingView({Key key}) : super(key: key);

  @override
  _BuildSettingViewState createState() => _BuildSettingViewState();
}

class _BuildSettingViewState extends State<BuildSettingView> {

  bool oldPasswordVisible=true;
  bool newPasswordVisible=true;
  bool confirmNewPasswordVisible=true;
  final TextEditingController passwordController=new TextEditingController();
  final TextEditingController newPasswordController=new TextEditingController();
  final TextEditingController confirmNewPasswordController=new TextEditingController();
  final TextEditingController emailController=new TextEditingController();
  final TextEditingController newEmailController=new TextEditingController();
  final TextEditingController confirmNewEmailController=new TextEditingController();
  final TextEditingController firstNameController=new TextEditingController();
  final TextEditingController secondNameController=new TextEditingController();
  final TextEditingController phoneController=new TextEditingController();
  final TextEditingController addressController=new TextEditingController();
  final TextEditingController problemTextController=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 2.0,
                ),
              ),
            ),
            child: InkWell(
              onTap: (){
                showModalBottomSheet(
                    context: (context),
                    builder: (context){
                      return SingleChildScrollView(
                        child: Container(
                          margin: EdgeInsets.all(15),
                          child: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10),
                                      alignment: Alignment.topRight,
                                      child: CustomText(
                                        size: 16,
                                        fontWeight: FontWeight.bold,
                                        title: 'معلومات الحساب',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    TextFormField(
                                      controller:emailController,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        labelText: 'البريد الالكتروني',
                                        labelStyle: TextStyle(
                                            color: Colors.pinkAccent
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
                                      height: 10.0,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            controller:firstNameController,
                                            keyboardType: TextInputType.name,
                                            decoration: InputDecoration(
                                              labelText: 'الاسم الاول',
                                              labelStyle: TextStyle(
                                                  color: Colors.pinkAccent
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
                                        SizedBox(width: 10,),
                                        Expanded(
                                          child: TextFormField(
                                            controller:secondNameController,
                                            keyboardType: TextInputType.name,
                                            decoration: InputDecoration(
                                              labelText: 'الاسم الثاني',
                                              labelStyle: TextStyle(
                                                  color: Colors.pinkAccent
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
                                    TextFormField(
                                      controller: phoneController,
                                      keyboardType: TextInputType.phone,
                                      decoration: InputDecoration(
                                        labelText: 'رقم الهاتف',
                                        labelStyle: TextStyle(
                                          color: Colors.pinkAccent,
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
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Expanded(
                                          child: DefaultButton(
                                            title: 'حفظ',
                                            textColor: Colors.white,
                                            margin: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                                            color: Colors.pinkAccent,
                                            onTap: (){
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.pinkAccent,
                                              ),
                                            ),
                                            child: DefaultButton(
                                              title: 'الغاء',
                                              textColor: Colors.pinkAccent,
                                              margin: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                                              color: Colors.white,
                                              onTap: (){
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ]),
                        ),
                      );

                    }
                );
              },
              child: ListTile(
                leading: CustomText(
                  title: 'معلومات الحساب',
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 2.0,
                ),
              ),
            ),
            child: InkWell(
              onTap: (){
                showModalBottomSheet(
                    context: (context),
                    builder: (context){
                      return SingleChildScrollView(
                        child: Container(
                          margin: EdgeInsets.all(15),
                          child: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10),
                                      alignment: Alignment.topRight,
                                      child: CustomText(
                                        size: 16,
                                        fontWeight: FontWeight.bold,
                                        title: 'تغيير البريد الالكتروني',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    TextFormField(
                                      controller:emailController,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        labelText: 'البريد الالكتروني الحالي',
                                        labelStyle: TextStyle(
                                            color: Colors.pinkAccent
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
                                      height: 10.0,
                                    ),
                                    TextFormField(
                                      controller:firstNameController,
                                      keyboardType: TextInputType.name,
                                      decoration: InputDecoration(
                                        labelText: 'البريد الالكتروني الجديد',
                                        labelStyle: TextStyle(
                                            color: Colors.pinkAccent
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide:BorderSide(color: Colors.pinkAccent,width: 2)
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide:BorderSide(color: Colors.pinkAccent,width: 2)
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    TextFormField(
                                      controller:passwordController,
                                      keyboardType: TextInputType.visiblePassword,
                                      obscureText:oldPasswordVisible,
                                      decoration: InputDecoration(
                                          labelText: 'كلمة المرور الحالية',
                                          labelStyle: TextStyle(
                                              color: Colors.pinkAccent
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide:BorderSide(color: Colors.pinkAccent,width: 2)
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide:BorderSide(color: Colors.pinkAccent,width: 2)
                                          ),
                                          suffixIcon: IconButton(
                                            onPressed:(){
                                              setState(() {
                                                oldPasswordVisible=!oldPasswordVisible;
                                              });
                                            } ,
                                            icon:Icon(oldPasswordVisible?Icons.visibility:Icons.visibility_off,color: Colors.pinkAccent,) ,
                                          )

                                      ),
                                    ),


                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Expanded(
                                          child: DefaultButton(
                                            title: 'حفظ',
                                            textColor: Colors.white,
                                            margin: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                                            color: Colors.pinkAccent,
                                            onTap: (){
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.pinkAccent,
                                              ),
                                            ),
                                            child: DefaultButton(
                                              title: 'الغاء',
                                              textColor: Colors.pinkAccent,
                                              margin: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                                              color: Colors.white,
                                              onTap: (){
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ]),
                        ),
                      );

                    }
                );
              },
              child: ListTile(
                leading: CustomText(
                  title: 'تغيير البريد الالكتروني',
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Container(

            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 2.0,
                ),
              ),
            ),
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: (context),
                    builder: (context){
                      return SingleChildScrollView(
                        child: Container(
                          margin: EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    alignment: Alignment.topRight,
                                    child: CustomText(
                                      size: 16,
                                      fontWeight: FontWeight.bold,
                                      title: 'تغيير كلمة المرور',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  TextFormField(
                                    controller:passwordController,
                                    keyboardType: TextInputType.visiblePassword,
                                    obscureText:oldPasswordVisible,
                                    decoration: InputDecoration(
                                        labelText: 'كلمة المرور الحالية',
                                        labelStyle: TextStyle(
                                            color: Colors.pinkAccent
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide:BorderSide(color: Colors.pinkAccent,width: 2)
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide:BorderSide(color: Colors.pinkAccent,width: 2)
                                        ),
                                        suffixIcon: IconButton(
                                          onPressed:(){
                                            setState(() {
                                              oldPasswordVisible=!oldPasswordVisible;
                                            });
                                          } ,
                                          icon:Icon(oldPasswordVisible?Icons.visibility:Icons.visibility_off,color: Colors.pinkAccent,) ,
                                        )

                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),


                                  TextFormField(
                                    controller: newPasswordController,
                                    keyboardType: TextInputType.visiblePassword,
                                    obscureText: newPasswordVisible,
                                    decoration: InputDecoration(
                                        labelText: 'كلمة المرور الجديدة',
                                        labelStyle: TextStyle(
                                          color: Colors.pinkAccent,
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide:BorderSide(color: Colors.pinkAccent,width: 2)
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide:BorderSide(color: Colors.pinkAccent,width: 2)
                                        ),

                                        suffixIcon: IconButton(
                                          onPressed:(){
                                            setState(() {
                                              newPasswordVisible=!newPasswordVisible;
                                            });
                                          } ,
                                          icon:Icon(newPasswordVisible?Icons.visibility:Icons.visibility_off,color: Colors.pinkAccent,) ,
                                        )

                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  TextFormField(
                                    controller: confirmNewPasswordController,
                                    keyboardType: TextInputType.visiblePassword,
                                    obscureText: confirmNewPasswordVisible,
                                    decoration: InputDecoration(
                                        labelText: 'تأكيد كلمة المرور الجديدة',
                                        labelStyle: TextStyle(
                                          color: Colors.pinkAccent,
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide:BorderSide(color: Colors.pinkAccent,width: 2)
                                        ),

                                        enabledBorder: UnderlineInputBorder(
                                            borderSide:BorderSide(color: Colors.pinkAccent,width: 2)
                                        ),
                                        suffixIcon: IconButton(
                                          onPressed:(){
                                            setState(() {
                                              confirmNewPasswordVisible=!confirmNewPasswordVisible;
                                            });
                                          } ,
                                          icon:Icon(confirmNewPasswordVisible?Icons.visibility:Icons.visibility_off,color: Colors.pinkAccent,) ,
                                        )

                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    child: DefaultButton(
                                      title: 'حفظ',
                                      textColor: Colors.white,
                                      margin: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                                      color: Colors.pinkAccent,
                                      onTap: (){
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.pinkAccent,
                                        ),
                                      ),
                                      child: DefaultButton(
                                        title: 'الغاء',
                                        textColor: Colors.pinkAccent,
                                        margin: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                                        color: Colors.white,
                                        onTap: (){
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );

                    }
                );
              },
              child: ListTile(
                leading: CustomText(
                  title: 'تغيير كلمة المرور',
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 2.0,
                ),
              ),
            ),
            child: InkWell(
              onTap: (){
                showModalBottomSheet(
                    context: (context),
                    builder: (context){
                      return SingleChildScrollView(
                        child: Container(
                          margin: EdgeInsets.all(15),
                          child: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10),
                                      alignment: Alignment.topRight,
                                      child: CustomText(
                                        size: 16,
                                        fontWeight: FontWeight.bold,
                                        title: 'العنوان المحفوظ',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    TextFormField(
                                      controller:addressController,
                                      keyboardType: TextInputType.streetAddress,
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.location_on_outlined,color: Colors.pinkAccent,),
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
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Expanded(
                                          child: DefaultButton(
                                            title: 'حفظ',
                                            textColor: Colors.white,
                                            margin: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                                            color: Colors.pinkAccent,
                                            onTap: (){
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.pinkAccent,
                                              ),
                                            ),
                                            child: DefaultButton(
                                              title: 'الغاء',
                                              textColor: Colors.pinkAccent,
                                              margin: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                                              color: Colors.white,
                                              onTap: (){
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ]),
                        ),
                      );

                    }
                );
              },
              child: ListTile(
                leading: CustomText(
                  title: 'العنوان المحفوظ',
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 2.0,
                ),
              ),
            ),
            child: InkWell(
              onTap: (){
                showModalBottomSheet(
                    context: (context),
                    builder: (context){
                      return SingleChildScrollView(
                        child: Container(
                          margin: EdgeInsets.all(15),
                          child: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10),
                                      alignment: Alignment.topRight,
                                      child: CustomText(
                                        size: 16,
                                        fontWeight: FontWeight.bold,
                                        title: 'الابلاغ عن مشكلة',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    TextFormField(
                                      controller:problemTextController,
                                      keyboardType: TextInputType.text,
                                      maxLines: 3,
                                      decoration: InputDecoration(
                                        hintText: 'اكتب هنا',
                                        enabledBorder: OutlineInputBorder(
                                            borderSide:BorderSide(color: Colors.pinkAccent,width: 2)
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide:BorderSide(color: Colors.pinkAccent,width: 2)
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 100,
                                          width: 120,

                                          child:Image.asset(
                                            'assets/images/shoes.jpg'
                                          ),
                                        ),
                                        InkWell(
                                          onTap: (){
                                          },
                                          child: Container(
                                            margin: EdgeInsets.all(10),
                                            padding: EdgeInsets.all(10),
                                            alignment: Alignment.center,
                                            height: 100,
                                            width: 120,
                                            decoration: BoxDecoration(
                                              border: Border.all(color: Colors.pinkAccent,width: 2),
                                            ),
                                            child: Center(
                                              child: Column(
                                                children: [
                                                  Icon(Icons.camera_alt_outlined,size: 40,color: Colors.pinkAccent,),
                                                  CustomText(
                                                    title: 'إضافة صورة',
                                                  ),

                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Expanded(
                                          child: DefaultButton(
                                            title: 'ارسال',
                                            textColor: Colors.white,
                                            margin: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                                            color: Colors.pinkAccent,
                                            onTap: (){
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.pinkAccent,
                                              ),
                                            ),
                                            child: DefaultButton(
                                              title: 'الغاء',
                                              textColor: Colors.pinkAccent,
                                              margin: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                                              color: Colors.white,
                                              onTap: (){
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ]),
                        ),
                      );

                    }
                );
              },
              child: ListTile(
                leading: CustomText(
                  title: 'ابلاغ عن مشكلة',
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              leading: CustomText(
                title:'تسجيل الخروج',
              ),
            ),
          ),
        ],

      ),
    );
  }
}
