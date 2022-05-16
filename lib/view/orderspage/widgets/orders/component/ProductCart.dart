import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled9/widgets/MyText.dart';

import '../../../controller.dart';
import '../../../states.dart';

class ProductCart extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=>OrderCubit(),
        child: BlocConsumer<OrderCubit,OrderStates>(
        listener: (context,state){},
    builder: (context,state)=> Container(
      margin: EdgeInsets.all(10),
      height: 200,
      child: Card(
        elevation: 6,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/dress1.jpg',
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
                        size: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      CustomText(
                        title:'اللون:أحمر',
                        size: 12,

                      ),
                      CustomText(
                        title: 'المقاس:XL',
                        size: 12,

                      ),
                      CustomText(
                        title: 'الكمية:1',
                        size: 12,

                      ),


                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(

                      child: CustomText(
                        title: '200EGP',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: (){
                            OrderCubit.get(context).isPressed();
                          },
                          child: Icon(
                            OrderCubit.get(context).pressed?Icons.star
                                :Icons.star_outline,
                            color: OrderCubit.get(context).pressed?Colors.pinkAccent:Colors.grey,
                            size: 18,
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            OrderCubit.get(context).isPressed1();
                          },
                          child: Icon(
                            OrderCubit.get(context).pressed1?Icons.star
                                :Icons.star_outline,
                            color: OrderCubit.get(context).pressed1?Colors.pinkAccent:Colors.grey,
                            size: 18,
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            OrderCubit.get(context).isPressed2();
                          },
                          child: Icon(
                            OrderCubit.get(context).pressed2?Icons.star
                                :Icons.star_outline,
                            color: OrderCubit.get(context).pressed2?Colors.pinkAccent:Colors.grey,
                            size: 18,
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            OrderCubit.get(context).isPressed3();
                          },
                          child: Icon(
                            OrderCubit.get(context).pressed3?Icons.star
                                :Icons.star_outline,
                            color: OrderCubit.get(context).pressed3?Colors.pinkAccent:Colors.grey,
                            size: 18,
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            OrderCubit.get(context).isPressed4();
                          },
                          child: Icon(
                            OrderCubit.get(context).pressed4?Icons.star
                                :Icons.star_outline,
                            color: OrderCubit.get(context).pressed4?Colors.pinkAccent:Colors.grey,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    )
    );
  }
}
