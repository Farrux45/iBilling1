import 'package:flutter/material.dart';
import 'package:ibilding/constant/color_size_page.dart';
import 'package:ibilding/constant/size_config.dart';

class PopUpPage extends StatelessWidget {
  final List data;
  final double? height;
  final double? top;
  final bool? visible;
  PopUpPage({Key? key, required this.data, this.height, this.top, this.visible})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible ?? false,
      child: Container(
        margin: EdgeInsets.only(top: top ?? getHeight(224)),
        padding: EdgeInsets.symmetric(
            horizontal: getWidth(23.0), vertical: getHeight(10.0)),
        height: height ?? getHeight(184),
        width: getWidth(343),
        decoration: BoxDecoration(
          color: ColorConst.grey,
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Column(
          children: [
            for (var i = 0; i < data.length; i++)
              Column(
                children: [
                  SizedBox(height: getHeight(15.0)),
                  GestureDetector(
                    child: Row(
                      children: [
                        Text(
                          "${data[i]}",
                          style: TextStyle(
                            color: ColorConst.textWhite,
                            fontSize: getWidth(14.0),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Spacer(),
                        Image.asset("assets/images/circlesharp.png", color: ColorConst.lightGrey,)
                      ],
                    ),
                    onTap: (){},
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
