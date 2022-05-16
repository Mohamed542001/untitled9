import 'package:flutter/material.dart';
import 'package:untitled9/view/shoppingbasket/view.dart';
import 'package:untitled9/widgets/DefaultAppBar.dart';
import '../settingpage/component/BuildSettingView.dart';
import '../settingpage/component/BuildUploadImage.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: DefaultAppBar(
        title: 'الاعدادات',
        elev: 0,
        leading: InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) =>  ShoppingBasketView()),
              );
            },
            child: Stack(
                alignment: Alignment.topRight,
                children: [
                Icon(Icons.shop,color: Colors.black,size: 40,),
                CircleAvatar(
                radius: 10,
                backgroundColor: Colors.pinkAccent,
                child:Text(
                '3'
                ),
                )
                ]
              ),
            ),
          ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          child: Column(
            children: [
              BuildUploadImage(),
              BuildSettingView(),
            ],
          ),
        ),
      ),
    );
  }
}
