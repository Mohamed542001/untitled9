import 'package:flutter/material.dart';
import 'package:untitled9/widgets/DefaultAppBar.dart';

import 'component/BasketCard.dart';
import 'component/TotalOrder.dart';

class ShoppingBasketView extends StatelessWidget {
  const ShoppingBasketView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'سلة المشتريات',
        back: true,
        elev: 0,
        leading: IconButton(
          onPressed: (){Navigator.of(context).pop();},
          icon: Icon(Icons.arrow_back_ios,
            size: 25,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              ListView.builder(
                  itemCount: 2,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                    return BasketCard();
                  }

              ),
              TotalOrderView(),
            ],
          ),
        ),
      ),
    );
  }
}
