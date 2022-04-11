import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibilding/bloc/container_bloc.dart';
import 'package:ibilding/constant/color_size_page.dart';
import 'package:ibilding/constant/size_config.dart';

class ShowDialog extends StatelessWidget {
  const ShowDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: getWidth(10.0), vertical: getHeight(16.0)),
      height: getHeight(279),
      width: getWidth(327),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        color: ColorConst.grey,
      ),
      child: Column(
        children: [
          Text(
            "choose a language",
            style: TextStyle(
              color: ColorConst.textWhite,
            ),
          ),
          for (var i = 0; i < 3; i++)
            ListTile(
              leading: CircleAvatar(
                radius: getWidth(11),
                backgroundImage: AssetImage(flag[i]),
              ),
              title: Text(
                context.watch<ContainerCubit>().langs[i],
                style: TextStyle(
                  color: ColorConst.textWhite,
                  fontSize: getWidth(14),
                  fontWeight: FontWeight.w400,
                ),
              ),
              trailing: Image.asset(
                "assets/images/circlesharp.png",
                color: context.watch<ContainerCubit>().langs[i] ==
                        context.watch<ContainerCubit>().lang
                    ? ColorConst.green
                    : ColorConst.lightGrey,
              ),
              onTap: () {
                context.read<ContainerCubit>().langAdd(i);
              },
            ),
          SizedBox(height: getHeight(32.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: context.watch<ContainerCubit>().langBool == false
                    ? null
                    : () {
                        context.read<ContainerCubit>().langCancel();
                      },
                style: ElevatedButton.styleFrom(
                  primary: ColorConst.green,
                  fixedSize: Size(getWidth(125), getHeight(37)),
                ),
                child: Text(
                  "Cancel",
                  style: TextStyle(
                    color: ColorConst.textWhite,
                    fontSize: getWidth(14),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<ContainerCubit>().langDone(context);
                },
                style: ElevatedButton.styleFrom(
                  primary: ColorConst.green,
                  fixedSize: Size(getWidth(125), getHeight(37)),
                ),
                child: Text(
                  "Done",
                  style: TextStyle(
                    color: ColorConst.textWhite,
                    fontSize: getWidth(14),
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
