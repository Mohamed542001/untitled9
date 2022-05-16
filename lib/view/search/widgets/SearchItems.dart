import 'package:flutter/material.dart';
import 'package:untitled9/widgets/DefaultAppBar.dart';
import 'Arrange.dart';
import 'ItemCard.dart';

class SearchItemsView extends StatelessWidget {
  const SearchItemsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: DefaultAppBar(
            title: 'البحث',
            color: Colors.purple,
            back: true,
            elev: 0,
            leading: IconButton(
              onPressed: (){Navigator.of(context).pop();},
              icon: Icon(Icons.arrow_back_ios,
                size: 25,
                color: Colors.purple,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
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
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: GridView.builder(
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 10,
                          childAspectRatio: 1/1.7
                      ),
                      shrinkWrap: true,
                      itemCount: 12,
                      padding: EdgeInsets.zero,
                      physics: NeverScrollableScrollPhysics(),

                      itemBuilder: (context, index) => ItemCard(),
                    ),
                  ),

                ],
              ),
            ),
          ),
        )

    ;
  }
}
