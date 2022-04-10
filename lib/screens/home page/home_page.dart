import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:flutter/material.dart';
import 'package:ibilding/constant/color_size_page.dart';
import 'package:ibilding/constant/size_config.dart';
import 'package:ibilding/core/widgets/appBar_wdget.dart';
import 'package:ibilding/core/widgets/card_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: ColorConst.black,
      appBar: GlobalAppBar(title: "Contracts").build(context),
      body: Column(
        children: [
          CalendarAgenda(
            backgroundColor: ColorConst.greyBlack,
            initialDate: DateTime.now(),
            firstDate: DateTime.now().subtract(const Duration(days: 365)),
            lastDate: DateTime.now().add(const Duration(days: 4)),
            onDateSelected: (date) {
              print(date);
            },
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                if (index == 0) {
                  return myContracts();
                } else {
                  return const CardWidget();
                }
              },
              itemCount: 5,
            ),
          ),
        ],
      ),
     
    );
  }

  Padding myContracts() {
    return Padding(
      padding: EdgeInsets.only(
        top: getHeight(32.0),
        left: getWidth(15.0),
      ),
      child: Row(
        children: [
          Container(
            height: getHeight(25.0),
            width: getWidth(76.0),
            decoration: BoxDecoration(
                color: ColorConst.lightGreen,
                borderRadius: BorderRadius.circular(10.0)),
            child: Text(
              "Contracts",
              style: TextStyle(
                color: ColorConst.white,
                fontSize: getWidth(15.0),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getWidth(16.0),
            ),
            child: Text(
              "Invoice",
              style: TextStyle(
                color: ColorConst.white,
                fontSize: getWidth(15.0),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
