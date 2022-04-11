import 'package:flutter/material.dart';
import 'package:ibilding/constant/color_size_page.dart';
import 'package:ibilding/constant/size_config.dart';
import 'package:ibilding/core/widgets/contract_pages.dart';
import 'package:ibilding/core/widgets/new_contract_page.dart';
import 'package:ibilding/core/widgets/page_date.dart';

class HistoryPage extends StatelessWidget {
  
  HistoryPage({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: ColorConst.black,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: getHeight(109),
              width: getWidth(375),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getWidth(16.0),
                  vertical: getHeight(20.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "16.02.2021",
                      style: TextStyle(
                        color: ColorConst.whiteGrey,
                        fontSize: getWidth(14),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                      DatePage(name: "16.02.2021"),
                        Container(
                          color: ColorConst.textWhite,
                          width: getWidth(8),
                          height: getHeight(2),
                          margin:
                              EdgeInsets.symmetric(horizontal: getWidth(12.0)),
                        ),
                        DatePage(name: "To"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, mainAxisExtent: getHeight(155)),
            delegate: SliverChildBuilderDelegate((context, index) {
              return ContractContainer(index: index);
            }),
          ),
        ],
      ),
      
    );
  }
}
