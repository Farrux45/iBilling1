import 'package:flutter/material.dart';
import 'package:ibilding/constant/color_size_page.dart';
import 'package:ibilding/constant/size_config.dart';

class CardContainer extends StatelessWidget {
  CardContainer({Key? key}) : super(key: key);
  final List information = [
    "Yoldosheva Ziyoda",
    "Paid",
    "1,200,000 UZS",
    "№ 156",
    "6",
    "Проспект Мирзо-Улугбек, дом 58, Мирзо-Улугбекский район, Ташкент",
    "5647520318",
    "14:38, 2 February, 2021"
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getWidth(16.0), vertical: getHeight(20.0)),
      child: Column(
        children: [
          Container(
            height: getHeight(310),
            width: getWidth(343),
            padding: EdgeInsets.symmetric(
                horizontal: getWidth(20.0), vertical: getHeight(14.0)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              color: ColorConst.grey,
            ),
            child: Column(
              children: [
                for (var i = 0; i < 5; i++)
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "${farmCont[i]}" + ":",
                            style: TextStyle(
                              color: ColorConst.textWhite,
                              fontSize: getWidth(14.0),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: getWidth(8.0)),
                          Text(
                            information[i],
                            style: TextStyle(
                              color: ColorConst.lightGrey,
                              fontSize: getWidth(14.0),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: getHeight(14.0)),
                    ],
                  ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${farmCont[5]}" + ":",
                      style: TextStyle(
                        color: ColorConst.textWhite,
                        fontSize: getWidth(14.0),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: getWidth(5)),
                    Text(
                      information[5],
                      style: TextStyle(
                        color: ColorConst.lightGrey,
                        fontSize: getWidth(14.0),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                for (var i = 0; i < 2; i++)
                  Column(
                    children: [
                      SizedBox(height: getHeight(14.0)),
                      Row(
                        children: [
                          Text(
                            "${farmCont[i + 6]}" + ":",
                            style: TextStyle(
                              color: ColorConst.textWhite,
                              fontSize: getWidth(14.0),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: getWidth(8.0)),
                          Text(
                            information[i + 6],
                            style: TextStyle(
                              color: ColorConst.lightGrey,
                              fontSize: getWidth(14.0),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
              ],
            ),
          ),
          SizedBox(height: getHeight(20.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFFF426D).withOpacity(0.4),
                  fixedSize: Size(getWidth(164.0), getHeight(40.0)),
                ),
                child: Text(
                  "Delete Contracr",
                  style: TextStyle(
                    color: Color(0xFFFF426D),
                    fontSize: getWidth(14.0),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              ElevatedButton(

                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: ColorConst.green,
                  fixedSize: Size(getWidth(164), getHeight(40))
                ),
                child: Text("create_contract",
                  style: TextStyle(
                    color: ColorConst.textWhite,
                    fontSize: getWidth(14),
                    fontWeight: FontWeight.w700,
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
