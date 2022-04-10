import 'package:flutter/material.dart';
import 'package:ibilding/constant/color_size_page.dart';
import 'package:ibilding/constant/size_config.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: getWidth(16.0),
        right: getWidth(16.0),
        top: getHeight(16.0),
      ),
      child: Container(
        height: getHeight(200.0),
        width: getWidth(200.0),
        decoration: BoxDecoration(
            color: ColorConst.lightGrey,
            borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: EdgeInsets.only(
            top: getHeight(15.0),
            left: getWidth(10.0),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/paper.png',
                    width: getWidth(20.0),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getWidth(10.0),
                    ),
                    child: Text(
                      "№ 154",
                      style: TextStyle(
                        color: ColorConst.white,
                        fontSize: getWidth(16.0),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getWidth(180),
                    ),
                    child: Image.asset(
                      'assets/images/paid.png',
                      width: getWidth(60.0),
                    ),
                  ),
                ],
              ),
              rowText1(),
              rowText2(),
              rowText3(),
              rowText4(),
            ],
          ),
        ),
      ),
    );
  }

  Padding rowText4() {
    return Padding(
              padding: EdgeInsets.only(top: getHeight(10.0)),
              child: Row(
                children: [
                  Text(
                    "Number of invoices:",
                    style: TextStyle(
                      color: ColorConst.white,
                      fontSize: getWidth(16.0),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getWidth(8.0),
                    ),
                    child: Text(
                      "6",
                      style: TextStyle(
                        color: ColorConst.whiteGrey,
                        fontSize: getWidth(16.0),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 60.0),
                    child: Text(
                      "31.01.2021",
                      style: TextStyle(
                        color: ColorConst.whiteGrey,
                        fontSize: getWidth(16.0),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            );
  }

  Padding rowText3() {
    return Padding(
              padding: EdgeInsets.only(top: getHeight(10.0)),
              child: Row(
                children: [
                  Text(
                    "Last invoice:",
                    style: TextStyle(
                      color: ColorConst.white,
                      fontSize: getWidth(16.0),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getWidth(8.0),
                    ),
                    child: Text(
                      "№ 156",
                      style: TextStyle(
                        color: ColorConst.whiteGrey,
                        fontSize: getWidth(16.0),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            );
  }

  Padding rowText2() {
    return Padding(
              padding: EdgeInsets.only(top: getHeight(10.0)),
              child: Row(
                children: [
                  Text(
                    "Amount",
                    style: TextStyle(
                      color: ColorConst.white,
                      fontSize: getWidth(16.0),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getWidth(8.0),
                    ),
                    child: Text(
                      "1,200,000,UZS",
                      style: TextStyle(
                        color: ColorConst.whiteGrey,
                        fontSize: getWidth(16.0),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            );
  }

  Padding rowText1() {
    return Padding(
              padding: EdgeInsets.only(
                top: getHeight(18.0),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Yosh: ",
                        style: TextStyle(
                          color: ColorConst.white,
                          fontSize: getWidth(16.0),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getWidth(8.0),
                        ),
                        child: Text(
                          "Yoldosheva Ziyoda",
                          style: TextStyle(
                            color: ColorConst.whiteGrey,
                            fontSize: getWidth(16.0),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
  }
}
