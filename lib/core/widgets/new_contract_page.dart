import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibilding/bloc/container_bloc.dart';
import 'package:ibilding/constant/color_size_page.dart';
import 'package:ibilding/constant/size_config.dart';
import 'package:ibilding/core/widgets/pop_up_menu.dart';
import 'package:ibilding/core/widgets/text_form_field_page.dart';

class NewContacts extends StatelessWidget {
  const NewContacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getWidth(16), vertical: getHeight(20)),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                TextForm(
                  name: "face",
                  icon: GestureDetector(
                    child: Image.asset(
                        "assets/icons/down_Circle.png",
                        color: ColorConst.lightGrey),
                    onTap: () {
                      context.read<ContainerCubit>().faceUse();
                    },
                  ),
                ),
                TextForm(
                  name: "fisher’s_full_name",
                  child: TextFormField(
                    style: TextStyle(
                      color: ColorConst.textWhite,
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
                TextForm(
                  name: "address_of_the_organization",
                  child: TextFormField(
                    style: TextStyle(
                      color: ColorConst.textWhite,
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
                TextForm(
                  name: "inn",
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      color: ColorConst.textWhite,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                  icon: Image.asset(
                    "assets/icons/question.png",
                    color: ColorConst.lightGrey,
                  ),
                ),
                TextForm(
                  name: "status_of_the_contract",
                  icon: GestureDetector(
                    child: Image.asset(
                        "assets/icons/down_Circle.png",
                        color: ColorConst.lightGrey),
                    onTap: () {
                      context.read<ContainerCubit>().statusUse();
                    },
                  ),
                ),
              ],
            ),
            Positioned(
              child: Column(
                children: [
                  PopUpPage(
                    visible: context.watch<ContainerCubit>().faceVisible,
                    data: face,
                    height: getHeight(104),
                    top: getHeight(64),
                  ),
                  PopUpPage(
                    top: getHeight(395),
                    visible: context.watch<ContainerCubit>().statusVisible,
                    data: status,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}