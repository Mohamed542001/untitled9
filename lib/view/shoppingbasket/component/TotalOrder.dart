import 'package:flutter/material.dart';
import 'package:untitled9/view/shoppingbasket/widgets/BuyingView.dart';
import 'package:untitled9/widgets/DefaultButton.dart';
import 'package:untitled9/widgets/MyText.dart';

class TotalOrderView extends StatelessWidget {
  const TotalOrderView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: TextFormField(

                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'إضافة كوبون',
                    hintStyle: TextStyle(
                      color: Colors.pinkAccent,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide:BorderSide(color: Colors.pinkAccent,width: 2)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide:BorderSide(color: Colors.pinkAccent,width: 2)
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Expanded(
                  child: SizedBox(
                    height: 65,
                    child: DefaultButton(

                      title: 'اضافة',
                      textSize: 16,
                      textColor: Colors.white,
                      margin: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                      color: Colors.pinkAccent,
                      onTap: (){
                      },

                    ),
                  ),
              ),
            ],
          ),
          SizedBox(height: 5,),
          Container(
            alignment: Alignment.topRight,
            child: CustomText(
              title: 'اجمالي الطلب',
              fontWeight: FontWeight.bold,
              size: 18,
            ),
          ),
          SizedBox(height: 5,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  title: 'اجمالي المشتريات',
                  size: 18,
                ),
                CustomText(
                  title: '10.000EGP',
                ),
              ],
            ),
          ),
          SizedBox(height: 5,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  title: 'مصاريف الشحن',
                  size: 18,
                ),
                CustomText(
                  title: '50EGP',
                ),
              ],
            ),
          ),
          SizedBox(height: 5,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  title: 'الاجمالي',
                  size: 18,
                ),
                CustomText(
                  title: '10.050EGP',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          DefaultButton(
            title: 'ادفع الان',
            textSize: 16,
            textColor: Colors.white,
            margin: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
            color: Colors.pinkAccent,
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const BuyingView()),
              );
            },

          ),

        ],
      ),
    );
  }
}
