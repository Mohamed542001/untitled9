import 'package:flutter/material.dart';
import 'package:untitled9/widgets/DefaultButton.dart';
import 'package:untitled9/widgets/MyText.dart';

class ReviewsView extends StatelessWidget {
  const ReviewsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: ListView(
        shrinkWrap: true,
        children: [
          Row(
            children: [
              CircleAvatar(

              ),
              SizedBox(width: 10,),
              Column(
                children: [
                  CustomText(
                    title: 'محمد سلامه',
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                        },
                        child: Icon(
                          Icons.star_outline,
                          size: 18,
                        ),
                      ),
                      InkWell(
                        onTap: (){
                        },
                        child: Icon(
                          Icons.star_outline,
                          size: 18,
                        ),
                      ),
                      InkWell(
                        onTap: (){
                        },
                        child: Icon(
                          Icons.star_outline,
                          size: 18,
                        ),
                      ),
                      InkWell(
                        onTap: (){
                        },
                        child: Icon(
                          Icons.star_outline,
                          size: 18,
                        ),
                      ),
                      InkWell(
                        onTap: (){
                        },
                        child: Icon(
                          Icons.star_outline,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.pinkAccent),
              hintText: 'اكتب مراجعاتك',
              enabledBorder: UnderlineInputBorder(
                  borderSide:BorderSide(color: Colors.pinkAccent,width: 2)
              ),
              focusedBorder: UnderlineInputBorder(
                  borderSide:BorderSide(color: Colors.pinkAccent,width: 2)
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: DefaultButton(
              title: 'ارسال',
              width: 100,
              elev: 0,
              onTap: (){},
              color: Colors.pinkAccent,
              textColor: Colors.white,
            ),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 3,
              itemBuilder: (context,index){
                return Row(
                  children: [
                    CircleAvatar(

                    ),
                    SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(
                        children: [
                          CustomText(
                            title: 'محمد سلامه',
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: (){
                                },
                                child: Icon(
                                  Icons.star_outline,
                                  size: 18,
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                },
                                child: Icon(
                                  Icons.star_outline,
                                  size: 18,
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                },
                                child: Icon(
                                  Icons.star_outline,
                                  size: 18,
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                },
                                child: Icon(
                                  Icons.star_outline,
                                  size: 18,
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                },
                                child: Icon(
                                  Icons.star_outline,
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                          CustomText(
                            title: 'منتج ممتاز',
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }
          )
        ],
      ),
    );
  }
}
