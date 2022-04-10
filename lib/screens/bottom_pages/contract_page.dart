import 'dart:math';
import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:flutter/material.dart';
import 'package:ibilding/constant/color_size_page.dart';
import 'package:ibilding/constant/size_config.dart';

class ContractPage extends StatelessWidget {
  ContractPage({Key? key}) : super(key: key);

  final CalendarAgendaController _calendarAgendaControllerAppBar =
      CalendarAgendaController();
  final CalendarAgendaController _calendarAgendaControllerNotAppBar =
      CalendarAgendaController();

  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.black,
      body: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              SizedBox(
                height: getHeight(148),
                child: CalendarAgenda(
                  controller: _calendarAgendaControllerNotAppBar,
                  appbar: false,
                  selectedDayPosition: SelectedDayPosition.center,
                  leading: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  fullCalendarScroll: FullCalendarScroll.horizontal,
                  selectedDateColor: ColorConst.white,
                  locale: 'uz',
                  backgroundColor: ColorConst.grey,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now().subtract(const Duration(days: 140)),
                  lastDate: DateTime.now().add(const Duration(days: 60)),
                  events: List.generate(
                      100,
                      (index) => DateTime.now()
                          .subtract(Duration(days: index * random.nextInt(5)))),
                  onDateSelected: (date) {
                    print(date);
                  },
                ),
              ),
              Positioned(
                child: Container(
                  height: getHeight(57),
                  width: getWidth(130),
                  color: ColorConst.grey.withOpacity(0.1),
                ),
              ),
            ],
          ),
          SizedBox(
            height: getHeight(510),
            width: getWidth(375),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Row(
                    children: [
                      BottomContainer(index: 0, name: "invoice"),
                    ],
                  ),
                ),
                SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisExtent: getHeight(155),
                  ),
                  delegate: SliverChildBuilderDelegate((context, index) {
                    return ContractContainer(index: index,);
                  }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
