import 'package:flutter/material.dart';
import 'package:untitled9/widgets/DefaultAppBar.dart';

import 'component/CardView.dart';
import 'component/SearchView.dart';

class DressesView extends StatelessWidget {
  const DressesView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'الفساتين',
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
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            SearchView(),
            Container(
              margin: EdgeInsets.all(10),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
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

                itemBuilder: (context, index) => CardView(),
              ),
            ),
          ],
        ),
      )
    );
  }
}
