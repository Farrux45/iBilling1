import 'package:flutter/material.dart';
import 'package:ibilding/constant/color_size_page.dart';
import 'package:ibilding/constant/size_config.dart';

class BottomNavIcon extends StatelessWidget {
  final String? icon;
  final String? lable;
  final Function()? onTap;
  const BottomNavIcon( 
      {Key? key, required this.icon, required this.lable, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      child: SizedBox(
        height: getHeight(70),
        width: getWidth(74),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(icon!, height: getHeight(20.0)),
            SizedBox(height: getHeight(5.0)),
            Text(
              lable!,
              style: TextStyle(
                color: ColorConst.lightGrey,
                fontSize: getWidth(10.0),
              ),
            ),
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}
