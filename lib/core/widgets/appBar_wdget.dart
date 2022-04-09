import 'package:flutter/material.dart';
import 'package:ibilding/constant/color_size_page.dart';
import 'package:ibilding/constant/size_config.dart';

class GlobalAppBar extends StatelessWidget {
  String title;
   GlobalAppBar({
    Key? key, required this.title
  }) : super(key: key);

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorConst.black,
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(
              'assets/images/icon1.png',
              width: getWidth(24.0),
            ),
            Padding(
              padding: EdgeInsets.only(left: getWidth(10.0)),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: getWidth(18.0),
                ),
              ),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: getWidth(15.0)),
          child: Row(
            children: [
              Image.asset(
                'assets/images/filter.png',
                width: getWidth(20.0),
              ),
              Image.asset(
                'assets/images/line.png',
                width: getWidth(20.0),
                height: getHeight(20.0),
              ),
              Icon(Icons.search),
            ],
          ),
        ),
      ],
    );
  }
}
