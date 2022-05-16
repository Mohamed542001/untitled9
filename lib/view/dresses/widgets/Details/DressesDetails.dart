import 'package:flutter/material.dart';
import 'package:untitled9/widgets/DefaultButton.dart';
import 'package:untitled9/widgets/MyText.dart';

import 'component/BuildAddButton.dart';
import 'component/BuildDressTabs.dart';
import 'component/DressImages.dart';
import 'component/DressPrice.dart';
import 'component/SimilarProducts.dart';

class DressesDetails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          DressImages(),
          DressPrice(),
          BuildAddButton(),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: BuildDressTabs()
          ),
          SimilarProducts(),
        ],
      ),
    );
  }
}
