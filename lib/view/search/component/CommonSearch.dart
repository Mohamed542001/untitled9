import 'package:flutter/material.dart';
import 'package:untitled9/widgets/MyText.dart';

class CommonSearchView extends StatelessWidget {
  const CommonSearchView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            title: 'البحث الشائع',
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: 10,),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 20,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                childAspectRatio: 4/2
            ),
            itemCount: 9,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context,index){
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child:InkWell(
                  onTap: (){},
                  child: Row(
                    children: [
                      Icon(Icons.search,size: 16,),
                      CustomText(
                        title: 'حقيبة',
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
