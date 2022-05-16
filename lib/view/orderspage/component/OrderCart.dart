import 'package:flutter/material.dart';
import 'package:untitled9/view/orderspage/widgets/orders/view.dart';
import 'package:untitled9/widgets/DefaultButton.dart';
import 'package:untitled9/widgets/MyText.dart';

class OrderCart extends StatelessWidget {
  const OrderCart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 200,
      child: Card(
        elevation: 6,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Image.asset(
                      'assets/images/shoes.jpg',
                    fit: BoxFit.fill,
                    height: double.infinity,
                    width: 100,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [

                      CustomText(
                        title: 'عدد المنتجات:1',
                        size: 14,
                      ),
                      CustomText(
                        title:'الحاله:في الشحن',
                        size: 14,

                      ),
                      CustomText(
                        title: 'تاريخ الطلب:10/5/2022',
                        size: 14,

                      ),
                      CustomText(
                        title: 'تاريخ الوصول:10/5/2022',
                        size: 14,

                      ),
                      InkWell(
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
                          child: Row(
                            children: [
                              Icon(Icons.flag_outlined),
                            CustomText(
                            title: 'ابلاغ عن مشكلة',size: 14,
                          ),
                        ],
                          ),
                        
                      ),


                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomText(
                      title: '200EGP',
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    DefaultButton(
                      title: 'اظهار المنتجات',
                      textSize: 8,
                      textColor: Colors.white,
                      margin: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                      color: Colors.pinkAccent,
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) =>  ProductsView()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
