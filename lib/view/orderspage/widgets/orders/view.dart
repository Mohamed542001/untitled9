import 'package:flutter/material.dart';
import 'package:untitled9/widgets/DefaultAppBar.dart';

import 'component/ProductCart.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'المنتجات',
        elev: 0,
        back: false,
        leading: IconButton(
          onPressed: (){Navigator.of(context).pop();},
          icon: Icon(Icons.arrow_back_ios,
            size: 25,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context,index){
              return ProductCart();
            }
        ),
      ),
    );
  }
}
