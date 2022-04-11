import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibilding/bloc/container_bloc.dart';
import 'package:ibilding/constant/color_size_page.dart';
import 'package:ibilding/constant/size_config.dart';

class ShowContainer extends StatelessWidget {
  const ShowContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: getHeight(199),
      width: getWidth(327),
      padding: EdgeInsets.symmetric(
          horizontal: getWidth(20.0), vertical: getHeight(16.0)),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        color: ColorConst.grey,
      ),
      child: Column(
        children: [
          Text(
            "what do yo want create?",
            style: TextStyle(
              color: ColorConst.textWhite,
              fontSize: getWidth(16),
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: getHeight(22.0),
          ),
          for (var i = 0; i < 2; i++)
            GestureDetector(
              child: Container(
                height: getHeight(46),
                width: getWidth(287),
                margin: EdgeInsets.symmetric(vertical: getHeight(6.0)),
                padding: EdgeInsets.symmetric(horizontal: getWidth(20.0)),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  color: Color(0xff4E4E4E),
                ),
                child: Row(
                  children: [
                    Image.asset(i == 0
                        ? "assets/images/paper.png"
                        : "assets/images/paper2.png"),
                    SizedBox(width: getHeight(15.0)),
                    Text(
                      i == 0 ? "contracts" : "invoice",
                      style: TextStyle(
                        color: ColorConst.textWhite,
                        fontSize: getWidth(16),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                context.read<ContainerCubit>().addCreate(i);
              },
            ),
        ],
      ),
    );
  }
}
