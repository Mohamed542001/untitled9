import 'package:flutter/material.dart';
import 'package:untitled9/view/search/view.dart';
import 'package:untitled9/widgets/MyText.dart';
class BuildSearchBox extends StatelessWidget {
  const BuildSearchBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.pinkAccent),
      ),
      margin: EdgeInsets.only(left: 10,right: 10,top: 20),
      child: ListTile(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const SearchPageView()),
          );
        },
        title: CustomText(
          title: 'بحث',
          color: Colors.pinkAccent,
          fontWeight: FontWeight.bold,
        ),
        leading: Icon(Icons.search,color: Colors.pinkAccent,),
      ),
    );
  }
}
