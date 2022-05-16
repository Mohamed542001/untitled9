import 'package:flutter/material.dart';
import 'package:untitled9/view/dresses/widgets/Details/DressesDetails.dart';
import 'package:untitled9/widgets/MyText.dart';

class CardView extends StatelessWidget {
  const CardView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      child: Column(
        children: [
          Image.asset('assets/images/pants.jpg',fit: BoxFit.fill,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    width: 80,
                    child: Text(
                      'حذاء نسائي مسطح من الجلد الطبيعي',
                      maxLines: 8,
                      style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Row(
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Icon(
                          Icons.star,
                          size: 12,
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Icon(
                          Icons.star,
                          size: 12,
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Icon(
                          Icons.star,
                          size: 12,
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Icon(
                          Icons.star,
                          size: 12,
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Icon(
                          Icons.star,
                          size: 12,
                        ),
                      ),

                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onTap: (){},
                    child: Icon(
                      Icons.favorite,
                      size: 12,
                    ),
                  ),
                  CustomText(
                    title: '195EGP',
                    fontWeight: FontWeight.bold,
                    size: 8,
                  ),
                  CustomText(
                    title: '300EGP',
                    decoration: TextDecoration.lineThrough,
                    size: 8,
                  ),

                ],
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(5),
            color: Colors.pinkAccent,
            child: InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_)=>DressesDetails()
                    ),
                );
              },
              child: CustomText(
                title: 'إضافة الي السلة',
                color: Colors.white,
                size: 14,
              ),

            ),
          ),
        ],
      ),
    );
  }
}
