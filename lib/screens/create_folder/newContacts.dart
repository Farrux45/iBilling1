import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibilding/bloc/container_bloc.dart';
import 'package:ibilding/constant/color_size_page.dart';
import 'package:ibilding/constant/size_config.dart';

class NewContactsPage extends StatelessWidget {
  const NewContactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getWidth(16.0),
        vertical: getHeight(20.0),
      ),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                TextFormContainer(
                  name: "face",
                  icon: GestureDetector(
                    child: Image.asset("assets/icons/down_Circle.png",
                        color: ColorConst.lightGrey),
                    onTap: () {
                      context.read<ContainerCubit>().faceUse();
                    },
                  ),
                ),
                TextFormContainer(
                  name: "fisher's_full_name",
                  child: TextFormField(
                    style: TextStyle(
                      color: ColorConst.textWhite,
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
                TextFormContainer(
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
                  icon: Image.asset("assets/icons/question.png",
                      color: ColorConst.lightGrey),
                  onTap: () {
                    context.read<ContainerCubit>().statusUse();
                  },
                ),
              ],
            ),
          ],
        ),
        Positioned(child: Column(children: [PopapMenuContainer(
          visible: context.watch<ContainerCubit>().faceVisible,
          data: face,
          height: getHeight(104.0),
          top: getHeight(64),
        ),
        PopapMenuContainer(
          top: getHeight(395),
          visible: context.watch<ContainerCubit>().statusVisible,
          data: status,
        ),
        ],),)
      ),
    );
  }
}
