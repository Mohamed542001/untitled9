import 'package:flutter/material.dart';
import 'package:untitled9/view/search/widgets/Arrange.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Row(
        children: [
          Expanded(
            flex: 7,
            child: TextFormField(

              keyboardType: TextInputType.text,

              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search,color: Colors.pinkAccent,),
                labelText: 'بحث',
                labelStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.pinkAccent,
                    fontWeight: FontWeight.bold
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide:BorderSide(color: Colors.pinkAccent,width: 2)
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide:BorderSide(color: Colors.pinkAccent,width: 2)
                ),
              ),
            ),
          ),
          ArrangeView(),
        ],
      ),
    );
  }
}
