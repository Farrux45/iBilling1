import 'dart:math';
import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibilding/bloc/container_bloc.dart';
import 'package:ibilding/constant/color_size_page.dart';
import 'package:ibilding/constant/size_config.dart';
import 'package:ibilding/core/widgets/BNB_icon.dart';
import 'package:ibilding/core/widgets/contract_page.dart';
import 'package:ibilding/core/widgets/show_page.dart';
import 'package:ibilding/screens/bottom_pages/contract_page.dart';
import 'package:ibilding/screens/bottom_pages/history_page.dart';
import 'package:ibilding/screens/bottom_pages/profile_page.dart';
import 'package:ibilding/screens/bottom_pages/saved_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final List<Widget> _pages = [
    ContractsPage(),
    HistoryPage(),
    ContractPage(),
    const SavedPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: (context) => ContainerCubit(),
      child: BlocConsumer<ContainerCubit, ContainerState>(
        listener: (context, state) {},
        builder: (context, state) {
          return scaffold(context);
        },
      ),
    );
  }

  Scaffold scaffold(BuildContext context) {
    int index = context.watch<ContainerCubit>().bottomIndex;
    return Scaffold(
      backgroundColor: ColorConst.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor:
            index != 0 ? const Color(0xff141416) :  ColorConst.black,
        title: Text("${appBar[index]}".tr()),
        leading: Image.asset("assets/icons/icon1.png"),
        actions: [
          Visibility(
            visible: context.watch<ContainerCubit>().visible,
            child: SizedBox(
              height: getHeight(20),
              width: getWidth(80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Image.asset("assets/icons/filter.png",
                      height: getHeight(20)),
                  Container(
                      height: getHeight(17),
                      width: getWidth(2),
                      color: ColorConst.textWhite),
                  Image.asset("assets/icons/search.png",
                      height: getHeight(20)),
                ],
              ),
            ),
          ),
          SizedBox(width: getWidth(20))
        ],
      ),
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          _pages[index],
          Positioned(
            child: Visibility(
              visible: context.watch<ContainerCubit>().showCreate,
              child: Container(
                height: getHeight(815),
                width: getWidth(375),
                color: Colors.black.withOpacity(0.5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    ShowContainer(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: getHeight(70),
        width: getWidth(375),
        color: const Color(0xff141416),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavIcon(
              icon: index == 0
                  ? "assets/icons/contractWhite.svg"
                  : "assets/icons/contract.svg",
              lable: "contracts",
              onTap: () {
                context.read<ContainerCubit>().bottomChange(0);
              },
            ),
            BottomNavIcon(
              icon: index == 1
                  ? "assets/icons/time circleWhite"
                  : "assets/icons/time circle.svg",
              lable: "history".tr(),
              onTap: () {
                context.read<ContainerCubit>().bottomChange(1);
              },
            ),
            BottomNavIcon(
              icon: index == 2
                  ? "assets/icons/plusWhite.svg"
                  : "assets/icons/plus.svg",
              lable: "new".tr(),
              onTap: () {
                context.read<ContainerCubit>().bottomChange(2);
              },
            ),
            BottomNavIcon(
              icon: index == 3
                  ? "assets/icons/bookmarkWhite.svg"
                  : "assets/icons/bookmark.svg",
              lable: "saved".tr(),
              onTap: () {
                context.read<ContainerCubit>().bottomChange(3);
              },
            ),
            BottomNavIcon(
              icon: index == 4
                  ? "assets/icons/profile.svg"
                  : "assets/icons/profileWhite.svg",
              lable: "profile".tr(),
              onTap: () {
                context.read<ContainerCubit>().bottomChange(4);
              },
            ),
          ],
        ),
      ),
    );
  }
}