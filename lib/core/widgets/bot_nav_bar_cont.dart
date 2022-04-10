import 'package:flutter/widgets.dart';
import 'package:ibilding/constant/size_config.dart';

class BottomNavBar extends StatelessWidget {
  final int? index;
  final String? name;

  const BottomNavBar({Key? key, required this.index, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(
          top: getHeight(32),
          left: getWidth(16),
          bottom: getHeight(20),
        ),
        height: getHeight(33),
        width: getWidth(92),
        decoration: BoxDecoration(color: context.watch<>),
      ),
    );
  }
}
