import 'package:flutter/material.dart';
import 'package:untitled9/widgets/DefaultAppBar.dart';

import 'component/CommonSearch.dart';
import 'component/LastSearch.dart';
import 'component/SearchBox.dart';

class SearchPageView extends StatelessWidget {
  const SearchPageView({Key key}) : super(key: key);

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
      body: Container(
        color: Colors.white,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBoxView(),
              LastSearchView(),
              CommonSearchView(),
            ],
          ),
        ),
      ),
    );
  }
}
