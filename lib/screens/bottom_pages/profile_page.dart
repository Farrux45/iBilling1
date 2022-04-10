import 'package:flutter/material.dart';
import 'package:ibilding/constant/color_size_page.dart';
import 'package:ibilding/constant/size_config.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  final List myName = [
    "01.05.1986",
    "+998 97 775 77 86",
    "farxoshbakov@gmail.com",
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: ColorConst.black,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height: getHeight(20),
              ),
              Container(
                padding: EdgeInsets.all(
                  getWidth(20.0),
                ),
                height: getHeight(188),
                width: getWidth(343),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(6.0),
                  ),
                  color: ColorConst.grey,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: ColorConst.green,
                          radius: getWidth(20.0),
                          child: Image.asset(
                            "assets/icons/profile.png",
                            height: getHeight(25.0),
                            color: ColorConst.black,
                          ),
                        ),
                        SizedBox(
                          width: getWidth(18.0),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Xoshbakov Farrux",
                              style: TextStyle(
                                color: ColorConst.green,
                                fontSize: getWidth(16.0),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "Flutter Developer • Najot Ta'lim",
                              style: TextStyle(
                                color: ColorConst.whiteGrey,
                                fontSize: getWidth(12.0),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: getHeight(23.0)),
                    for (var i = 0; i > 3; i++)
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "${profile[i]}" + ":",
                                style: TextStyle(
                                  color: ColorConst.whiteGrey,
                                  fontSize: getWidth(14.0),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                width: getWidth(8.0),
                              ),
                              Text(
                                myName[i],
                                style: TextStyle(
                                  color: ColorConst.whiteGrey,
                                  fontSize: getWidth(14.0),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: getWidth(14.0)),
                        ],
                      ),
                  ],
                ),
              ),
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.symmetric(
                    vertical: getHeight(12.0),
                  ),
                  height: getHeight(44.0),
                  padding: EdgeInsets.symmetric(horizontal: getWidth(20.0)),
                  width: getWidth(343),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    color: ColorConst.grey,
                  ),
                  child: Row(
                    children: [
                      Text(
                        context.watch<ContBloc>().lang,
                        style: TextStyle(
                          color: ColorConst.whiteGrey,
                          fontSize: getWidth(14.0),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: getWidth(11.0),
                        backgroundImage: AssetImage(
                            flag[context.watch<ContBloc>().langIndex]),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  context.read<ContBloc>().addlangDialog();
                },
              ),
            ],
          ),
          Positioned(child: Visibility(
            visible: context.watch<ContBloc>().langDialog, 
          child: Container(
            height: getHeight(815),
            width: getWidth(375),
            color: Colors.black.withOpacity(0.5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                LangShowDialog(),
              ],
              ),
          ),
          ),
          ),
        ],
      ),
    );
  }
}
