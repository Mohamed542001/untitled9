import 'package:flutter/material.dart';
import 'package:untitled9/widgets/MyText.dart';

import 'DescribtionView.dart';
import 'ReviewsView.dart';
import 'SizeTable.dart';

class BuildDressTabs extends StatefulWidget {
  const BuildDressTabs({Key key}) : super(key: key);

  @override
  _BuildDressTabsState createState() => _BuildDressTabsState();
}

class _BuildDressTabsState extends State<BuildDressTabs> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController _tabController =TabController(length: 3, vsync: this);
    return Column(
      children: [
        Container(
          child: TabBar(
            controller: _tabController,
            isScrollable: true,
            tabs: [
              Tab(
                child: CustomText(
                  title: 'الوصف',
                ),
              ),
              Tab(
                child: CustomText(
                  title: 'المراجعات',
                ),
              ),
              Tab(
                child: CustomText(
                  title: 'جدول المقاسات',
                ),
              ),
            ],
          ),

        ),
        Container(
          width: double.maxFinite,
          height: MediaQuery.of(context).size.height*0.2,
          child: TabBarView(
            controller: _tabController,
            children: [
              DescriptionView(),
              ReviewsView(),
              SizeTableView(),
            ],
          ),
        )
      ],
    );
  }
}
