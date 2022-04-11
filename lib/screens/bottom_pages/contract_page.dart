import 'dart:math';
import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibilding/bloc/container_bloc.dart';
import 'package:ibilding/constant/color_size_page.dart';
import 'package:ibilding/constant/size_config.dart';
import 'package:ibilding/core/widgets/bot_nav_bar_cont.dart';
import 'package:ibilding/core/widgets/card_container.dart';
import 'package:ibilding/core/widgets/contract_pages.dart';
import 'package:ibilding/core/widgets/new_contract_page.dart';

class ContractsPage extends StatelessWidget {
  ContractsPage({Key? key,}) : super(key: key);

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
                    children: const [
                      BottomNavBar(index: 0, name: "contract"),
                      BottomNavBar(index: 1, name: "invoice"),
                    ],
                  ),
                ),
                SliverList(delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return context.watch<ContainerCubit>().contBool[index] ==
                            false
                        ? GestureDetector(
                            child: ContractContainer(
                              index: index,
                            ),
                            onTap: () {
                              context
                                  .read<ContainerCubit>()
                                  .addFarmCont(length: 10, index: index);
                            })
                        : GestureDetector(
                            child: CardContainer(),
                            onTap: () {
                              context
                                  .read<ContainerCubit>()
                                  .removeFarmCont(index: index);
                            },
                          );
                  },
                  childCount: 10,
                ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
