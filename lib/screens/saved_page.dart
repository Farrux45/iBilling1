import 'package:flutter/material.dart';
import 'package:ibilding/constant/color_size_page.dart';
import 'package:ibilding/constant/size_config.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: ColorConst.black,
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ContractContainer(index: index);
        },
      ),
    );
  }
}