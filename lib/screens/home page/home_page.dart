import 'dart:math';

import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibilding/constant/color_size_page.dart';
import 'package:ibilding/constant/size_config.dart';
import 'package:ibilding/core/widgets/appBar_wdget.dart';
import 'package:ibilding/core/widgets/card_widget.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  final CalendarAgendaController _calendarAgendaController =
      CalendarAgendaController();
  final CalendarAgendaController _calendarAgendaControllerNotAppBar =
      CalendarAgendaController();

  final List<Widget> _bottoms = [
    ContractsPage(),
    HistoryPage(),
    ContractsPage(),
    SavedPage(),
    ProfilePage(),
  ];

  Random random = Random();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: (_) => BlocState(),
      child: BlocConsumer(
        listener: (context, state) {},
        builder: (context, state){
          return myScaffold(context);
        },
      ),
    );
    
  }

  Scaffold myScaffold(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.black,
      appBar: GlobalAppBar(title: "Contracts").build(context),
      body: Stack(
        alignment: Alignment.center,
        children: [
          _bottoms[index],
          Positioned(child: Visibility(visible: context.watch<ContBloc>().showCreate, child: Container(height: getHeight(815), width: getWidth(375), color: Colors.black.withOpacity(0.5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              showCreateContainer(),
            ],
          ),),),),
        ],
      ),
      
       
      bottomNavigationBar: Container(
        height: getHeight(70),
        width: getWidth(375),
        color: const Color(0xFF141416),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavIcon(
              icon: index == 0 ? "assets/images/contract.png" : "assets/images/contractWhite.png",
              lable: "Contacts",
              onTap(){
                context.read<ContBloc>().bottomChange(0);
              }
            ),
            BottomNavIcon(
              icon: index == 1 ? "assets/images/time circle.png" : "assets/images/time circleWhite.png",
              lable: "History",
              onTap(){
                context.read<ContBloc>().bottomChange(1);
              }
            ),
            BottomNavIcon(
              icon: index ==  2 ? "assets/images/plus.png" : "assets/images/plusWhite.png",
              lable: "New",
              onTap(){
                context.read<ContBloc>().bottomChange(2);
              }
            ),
            BottomNavIcon(
              icon: index ==  3 ? "assets/images/bookmark.png" : "assets/images/bookmarkWhite.png",
              lable: "Saved",
              onTap(){
                context.read<ContBloc>().bottomChange(3);
              }
            ),
            BottomNavIcon(
              icon: index ==  4 ? "assets/images/profile.png" : "assets/images/profileWhite.png",
              lable: "Profile",
              onTap(){
                context.read<ContBloc>().bottomChange(2);
              }
            ),
          ],
            
        ),
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


// CalendarAgenda(
//             controller: _calendarAgendaControllerNotAppBar,
//             appbar: false,
//             selectedDayPosition: SelectedDayPosition.center,
//             leading: IconButton(
//               icon: const Icon(
//                 Icons.arrow_back_ios_new,
//                 color: Colors.white,
//               ),
//               onPressed: () {},
//             ),
//             fullCalendarScroll: FullCalendarScroll.horizontal,
//             selectedDateColor: ColorConst.white,
//             locale: 'uz',
//             backgroundColor: ColorConst.grey,
//             initialDate: DateTime.now(),
//             firstDate: DateTime.now().subtract(const Duration(days: 140)),
//             lastDate: DateTime.now().add(const Duration(days: 60)),
//             events: List.generate(
//                 100,
//                 (index) => DateTime.now()
//                     .subtract(Duration(days: index * random.nextInt(5)))),
//             onDateSelected: (date) {
//               print(date);
//             },
//           ),