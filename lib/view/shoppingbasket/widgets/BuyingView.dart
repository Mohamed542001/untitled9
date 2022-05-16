import 'package:flutter/material.dart';
import 'package:untitled9/view/orderspage/OrdersPage.dart';
import 'package:untitled9/widgets/DefaultAppBar.dart';
import 'package:untitled9/widgets/DefaultButton.dart';
import 'package:untitled9/widgets/MyText.dart';

class BuyingView extends StatelessWidget {
  const BuyingView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'الدفع',
        color: Colors.purple,
        back: true,
        elev: 0,
        leading: IconButton(
          onPressed: (){Navigator.of(context).pop();},
          icon: Icon(Icons.arrow_back_ios,
            size: 25,
            color: Colors.purple,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                title: 'البيانات الشخصية',
                fontWeight: FontWeight.bold,
              ),
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
              TextFormField(

                keyboardType: TextInputType.text,

                decoration: InputDecoration(
                  labelText: 'المحافظة',
                  suffixIcon: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.arrow_drop_down,color: Colors.grey,),
                  ),
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
              TextFormField(

                keyboardType: TextInputType.text,

                decoration: InputDecoration(
                  labelText: 'عنوان الشحن',
                  suffixIcon: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.location_on_outlined,color: Colors.grey,),
                  ),
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
              TextFormField(

                keyboardType: TextInputType.phone,

                decoration: InputDecoration(
                  labelText: 'رقم الهاتف',
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
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: CustomText(
                  title: 'نوع البطاقة',
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(

                keyboardType: TextInputType.text,

                decoration: InputDecoration(
                  prefixIcon: SizedBox(
                    height: 50,
                    width: 50,
                      child: Image.asset(
                          'assets/images/mastercard.png'
                      ),
                  ),

                  suffixIcon: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.arrow_drop_down,color: Colors.grey,),
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide:BorderSide(color: Colors.pinkAccent,width: 2)
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide:BorderSide(color: Colors.pinkAccent,width: 2)
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: CustomText(
                  title: 'بيانات البطاقة',
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(

                keyboardType: TextInputType.number,

                decoration: InputDecoration(
                  labelText: 'رقم البطاقة',
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
              Row(
                children: [
                  Expanded(
                    child: TextFormField(

                      keyboardType: TextInputType.name,

                      decoration: InputDecoration(
                        labelText: 'تاريخ الانتهاء',
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
                        labelText: 'CCV',
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
              DefaultButton(
                onTap: (){
                  showDialog(
                      context: context,
                    builder: (context){
                        return AlertDialog(
                          title: Container(
                            alignment: Alignment.center,
                            child: CustomText(
                              title: 'تم الدفع بنجاح',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          content: SizedBox(
                            height: 200,
                            width: 250,
                            child: Image.asset('assets/images/success.png'),
                          ),
                          actions: [
                            DefaultButton(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => const OrdersPage()),
                                );
                              },
                              title: 'الانتقال الي صفحة الطلبات',
                              color: Colors.pinkAccent,
                              textColor: Colors.white,
                              borderRadius: BorderRadius.circular(0),
                              borderColor: Colors.pinkAccent,
                              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                            ),
                          ],

                        );
                    }
                  );
                },
                title: 'اتمام الدفع',
                color: Colors.pinkAccent,
                textColor: Colors.white,
                borderRadius: BorderRadius.circular(0),
                borderColor: Colors.pinkAccent,
                margin: EdgeInsets.all(15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
