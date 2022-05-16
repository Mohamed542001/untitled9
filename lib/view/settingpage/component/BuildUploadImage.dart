import 'package:flutter/material.dart';
import 'package:untitled9/widgets/MyText.dart';

class BuildUploadImage extends StatelessWidget {
  const BuildUploadImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
      },
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        height: 100,
        width: 120,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.pinkAccent,width: 2),
        ),
        child: Center(
          child: Column(
            children: [
              Icon(Icons.camera_alt_outlined,size: 40,color: Colors.pinkAccent,),
              CustomText(
                title: 'إضافة صورة',
              ),

            ],
          ),
        ),
      ),
    );
  }
}
