import 'package:flutter/material.dart';
import 'package:untitled9/view/shoppingbasket/view.dart';
import 'package:untitled9/widgets/DefaultAppBar.dart';

import 'component/OrderCart.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'حالة الطلب',
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
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: 10,
            itemBuilder: (context,index){
                  return OrderCart();
            }
        ),
      ),
    );
  }
}
