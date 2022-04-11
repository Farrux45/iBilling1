import 'package:flutter/material.dart';
import 'package:ibilding/constant/color_size_page.dart';
import 'package:ibilding/constant/size_config.dart';

class ContractContainer extends StatelessWidget {
  final int? index;
  ContractContainer({Key? key,required this.index}) : super(key: key);
  final List list  = [
    "Yoldosheva Ziyoda","1,200,000 UZS","№ 156"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: getWidth(16), vertical: getHeight(6)),
      height: getHeight(148),
      width: getWidth(343),
      padding: EdgeInsets.all(getWidth(12)),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        color: ColorConst.grey,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                "assets/icons/contractWhite.png",
                height: getHeight(15),
                color: ColorConst.green,
              ),
              SizedBox(width: getWidth(9)),
              Text(
                "№ 154",
                style: TextStyle(
                  color: ColorConst.textWhite,
                  fontSize: getWidth(14),
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Spacer(),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: getWidth(7), vertical: getHeight(3)),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  color: ColorConst.green.withOpacity(0.3),
                ),
                child: Center(
                  child: Text(
                    "Paid",
                    style: TextStyle(
                      color: ColorConst.green,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: getHeight(14)),
          for (var i = 0; i < 3; i++)
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      "${contract[i]}" + ":",
                      style: TextStyle(
                        color: ColorConst.textWhite,
                        fontSize: getWidth(14),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: getWidth(8)),
                    Text(
                      list[i],
                      style: TextStyle(
                        color: ColorConst.lightGrey,
                        fontSize: getWidth(14),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: getHeight(5)),
              ],
            ),
          Row(
            children: [
              Text(
                "number_of_invoices" + ":",
                style: TextStyle(
                  color: ColorConst.textWhite,
                  fontSize: getWidth(14),
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: getWidth(8)),
              Text(
                "6",
                style: TextStyle(
                  color: ColorConst.lightGrey,
                  fontSize: getWidth(14),
                  fontWeight: FontWeight.w400,
                ),
              ),
              Spacer(),
              Text(
                "31.01.2021",
                style: TextStyle(
                  color:ColorConst.lightGrey,
                  fontSize: getWidth(14),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}