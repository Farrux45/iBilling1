import 'package:flutter/material.dart';
import 'package:ibilding/constant/color_size_page.dart';
import 'package:ibilding/constant/size_config.dart';

class DatePage extends StatelessWidget {
  final Function()? onTap;
  final String? name;
  DatePage({Key? key, this.onTap, this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: getHeight(37),
        width: getWidth(116),
        padding: EdgeInsets.symmetric(horizontal: getWidth(10.0)),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          color: ColorConst.grey,
        ),
        child: Center(
          child: Row(
            children: [
              Text(
                name ?? " ",
                style: TextStyle(
                  color: ColorConst.lightGrey,
                  fontSize: getWidth(14),
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Icon(
                Icons.date_range,
                color: ColorConst.lightGrey,
                size: getWidth(15.0),
              ),
            ],
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
