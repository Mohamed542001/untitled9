import 'package:flutter/material.dart';
import 'package:untitled9/view/favoritepage/widegts/favourite_card.dart';
import 'package:untitled9/view/shoppingbasket/view.dart';
import 'package:untitled9/widgets/DefaultAppBar.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'قائمة الأمنيات',
        elev: 0,
        leading: InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) =>  ShoppingBasketView()),
            );
          },
          child: Stack(alignment: Alignment.topRight, children: [
            Icon(
              Icons.shop,
              color: Colors.black,
              size: 40,
            ),
            CircleAvatar(
              radius: 10,
              backgroundColor: Colors.pinkAccent,
              child: Text('3'),
            )
          ]),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                 mainAxisSpacing: 5,
                crossAxisSpacing: 10,
                childAspectRatio: 1/1.7
              ),
          shrinkWrap: true,
          itemCount: 12,
          padding: EdgeInsets.zero,

          itemBuilder: (context, index) => FavouriteCard(),
        ),
      ),
    );
  }
}
