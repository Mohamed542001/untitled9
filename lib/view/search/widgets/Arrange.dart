import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled9/widgets/MyText.dart';

import '../controller.dart';
import '../states.dart';

class ArrangeView extends StatelessWidget {
  const ArrangeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: IconButton(
        onPressed: (){
          showModalBottomSheet(
              context: (context),
              builder: (context){
                return BlocProvider(
                    create: (context)=>SearchCubit(),
                    child: BlocConsumer<SearchCubit,SearchStates>(
                        listener: (context,state){},
                        builder: (context,state)=> SingleChildScrollView(
                          child: Container(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  title: 'ترتيب عن طريق',
                                  size: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                                SizedBox(height: 20,),
                                InkWell(
                                  onTap: (){
                                    SearchCubit.get(context).isPressed();
                                  },
                                  child: ListTile(
                                    leading: CustomText(
                                      title: 'الترتيب الافتراضي',
                                      color: SearchCubit.get(context).pressed?Colors.pinkAccent:Colors.black,
                                    ),
                                    trailing: SearchCubit.get(context).pressed?Icon(Icons.done,color: Colors.pinkAccent,):null,
                                  ),
                                ),
                                InkWell(
                                  onTap: (){
                                    SearchCubit.get(context).isPressed1();
                                  },
                                  child: ListTile(
                                    leading: CustomText(
                                      title: 'ترتيب حسب الشهرة',
                                      color: SearchCubit.get(context).pressed1?Colors.pinkAccent:Colors.black,
                                    ),
                                    trailing: SearchCubit.get(context).pressed1?Icon(Icons.done,color: Colors.pinkAccent,):null,
                                  ),
                                ),
                                InkWell(
                                  onTap: (){
                                    SearchCubit.get(context).isPressed2();
                                  },
                                  child: ListTile(
                                    leading: CustomText(
                                      title: 'ترتيب حسب معدل التقييم',
                                      color: SearchCubit.get(context).pressed2?Colors.pinkAccent:Colors.black,
                                    ),
                                    trailing: SearchCubit.get(context).pressed2?Icon(Icons.done,color: Colors.pinkAccent,):null,
                                  ),
                                ),
                                InkWell(
                                  onTap: (){
                                    SearchCubit.get(context).isPressed3();
                                  },
                                  child: ListTile(
                                    leading: CustomText(
                                      title: 'ترتيب حسب الادني سعرا للاعلي',
                                      color: SearchCubit.get(context).pressed3?Colors.pinkAccent:Colors.black,
                                    ),
                                    trailing: SearchCubit.get(context).pressed3?Icon(Icons.done,color: Colors.pinkAccent,):null,
                                  ),
                                ),
                                InkWell(
                                  onTap: (){
                                    SearchCubit.get(context).isPressed4();
                                  },
                                  child: ListTile(
                                    leading: CustomText(
                                      title: 'ترتيب حسب الاعلي سعرا للادني',
                                      color: SearchCubit.get(context).pressed4?Colors.pinkAccent:Colors.black,
                                    ),
                                    trailing: SearchCubit.get(context).pressed4?Icon(Icons.done,color: Colors.pinkAccent,):null,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )));
              }
          );
        },
        icon: Icon(Icons.add_road_outlined),
      ),
    );
  }
}
