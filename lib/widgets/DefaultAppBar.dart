import 'package:flutter/material.dart';

import 'MyText.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {

  final String title;
  final Widget leading;
  final Widget trailing;
  final List<Widget> action;
  final double size;
  final double elev;
  final Color color;
  final Color bgColor;
  final bool back;

  DefaultAppBar({
    this.title,
    this.action=const[],
    this.leading,
    this.trailing,
    this.size,
    this.elev,
    this.color,
    this.bgColor,
    this.back=true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: size??60,
      elevation: elev??5,
      title: CustomText(
        title: '$title',
        color: color??Colors.black,
        size: 20,
        fontWeight: FontWeight.bold,
      ),
      centerTitle: true,
      titleSpacing: 0,
      backgroundColor: bgColor??Colors.white,

      leading: leading?? Offstage(
        offstage: !back,
        child: IconButton(
          onPressed: (){Navigator.of(context).pop();},
          icon: Icon(Icons.arrow_back_ios_outlined,
            size: 25,
            color: Colors.black,
          ),
        ),
      ),

      actions: action,

    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(size??60);
}