import 'package:flutter/material.dart';
import 'package:untitled9/widgets/MyText.dart';

class DressPrice extends StatefulWidget {
  const DressPrice({Key key}) : super(key: key);

  @override
  _DressPriceState createState() => _DressPriceState();
}

class _DressPriceState extends State<DressPrice> {
  String selected='XL';
  int count=1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(15),
          alignment: Alignment.topRight,
          child: CustomText(
            title: 'حذاء نسائي مسطح من الجلد الطبيعي',
            size: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      CustomText(
                        title: 'المقاسات',
                      ),
                      SizedBox(width: 15,),
                      DropdownButton(
                          underline: Divider(
                            color: Colors.pinkAccent,
                            thickness: 2,
                            height: 5,
                          ),
                          value: selected,
                          items: ['L','M','XL','XXL']
                              .map((e) => DropdownMenuItem(child: CustomText(
                            title: '$e',
                          ),
                            value: e,
                          )).toList(),
                          onChanged: (val){
                            setState(() {
                              selected=val;
                            });
                          }

                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomText(
                        title: 'الالوان',
                      ),
                      SizedBox(width: 15,),
                      InkWell(
                        onTap: (){},
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.black,
                        ),
                      ),
                      SizedBox(width: 5,),
                      InkWell(
                        onTap: (){},
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.white,
                        ),
                      ),
                      SizedBox(width: 5,),
                      InkWell(
                        onTap: (){},
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 5,),
                      InkWell(
                        onTap: (){},
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.lightBlueAccent,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  CustomText(
                    title: '195EGP',
                    fontWeight: FontWeight.bold,
                    size: 15,
                  ),
                  CustomText(
                    title: '300EGP',
                    decoration: TextDecoration.lineThrough,
                    size: 13,
                  ),
                  SizedBox(
                    height: 15,
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
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                    count++;
                  });
                },
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.purple,
                  child: CustomText(
                    title: '+',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              CustomText(
                title: '$count',
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                width: 5,
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    count--;
                  });
                },
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.purple,
                  child: CustomText(
                    title: '-',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
