import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled9/widgets/DefaultButton.dart';
import 'package:untitled9/widgets/MyText.dart';

import '../controller.dart';
import '../states.dart';


class BasketCard extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>BasketCubit(),
      child: BlocConsumer<BasketCubit,BasketStates>(
        listener: (context,state){},
        builder: (context,state)=>Container(
          margin: EdgeInsets.all(10),
          height: 150,
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
                        'assets/images/outerwear.jpg',
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
                            title: 'جامبسوت بيج اوفر سايز',
                            size: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomText(
                            title:'اللون:اسود',
                            size: 14,

                          ),
                          CustomText(
                            title: 'المقاس:XL',
                            size: 14,

                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: (){
                                  BasketCubit.get(context).isPressed();
                                },
                                child: Icon(
                                  BasketCubit.get(context).pressed?Icons.star
                                      :Icons.star_outline,
                                  color: BasketCubit.get(context).pressed?Colors.pinkAccent:Colors.grey,
                                  size: 18,
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  BasketCubit.get(context).isPressed1();
                                },
                                child: Icon(
                                  BasketCubit.get(context).pressed1?Icons.star
                                      :Icons.star_outline,
                                  color: BasketCubit.get(context).pressed1?Colors.pinkAccent:Colors.grey,
                                  size: 18,
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  BasketCubit.get(context).isPressed2();
                                },
                                child: Icon(
                                  BasketCubit.get(context).pressed2?Icons.star
                                      :Icons.star_outline,
                                  color: BasketCubit.get(context).pressed2?Colors.pinkAccent:Colors.grey,
                                  size: 18,
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  BasketCubit.get(context).isPressed3();
                                },
                                child: Icon(
                                  BasketCubit.get(context).pressed3?Icons.star
                                      :Icons.star_outline,
                                  color: BasketCubit.get(context).pressed3?Colors.pinkAccent:Colors.grey,
                                  size: 18,
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  BasketCubit.get(context).isPressed4();
                                },
                                child: Icon(
                                  BasketCubit.get(context).pressed4?Icons.star
                                      :Icons.star_outline,
                                  color: BasketCubit.get(context).pressed4?Colors.pinkAccent:Colors.grey,
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: (){
                                  BasketCubit.get(context).plus();
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
                                title: '${BasketCubit.get(context).count}',
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              InkWell(
                                onTap: (){
                                  BasketCubit.get(context).minus();
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
                          title: 'ازالة',
                          textSize: 16,
                          textColor: Colors.white,
                          margin: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                          color: Colors.pinkAccent,
                          onTap: (){
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
