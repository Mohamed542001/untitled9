import 'package:flutter/material.dart';
import 'package:untitled9/widgets/MyText.dart';

class DescriptionView extends StatelessWidget {
  const DescriptionView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: CustomText(
        title: 'لدينا  مجموعه متنوعه من افضل المنتجات واجود خامات لاعطائك مظهر انيق واكثر جاذبية هذه المنتج  تم اختيار خاماته  بعنايه من قبل فريق مختص و تم تصميمه و تصنيعه بايدي طاقم من امهر و ادق العماله و المصممين جودة عالية',
      ),
    );
  }
}
