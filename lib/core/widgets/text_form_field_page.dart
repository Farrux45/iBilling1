import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:ibilding/constant/color_size_page.dart';
import 'package:ibilding/constant/size_config.dart';

class TextForm extends StatelessWidget {
  final String? name;
  final Widget? child;
  final Widget? icon;
  TextForm({Key? key, this.name, this.child, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name ?? "",
          style: TextStyle(
            color: ColorConst.lightGrey,
            fontSize: getWidth(14),
            fontWeight: FontWeight.w400,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: getHeight(6.0), bottom: getHeight(16.0)),
          height: getHeight(44),
          width: getHeight(343),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(6.0)),
            border: Border.all(color: ColorConst.grey, width: getWidth(2.0)),
          ),
          child: child,
        ),
        const Spacer(),
        icon?? const Text(""),
      ],
    );
  }
}
