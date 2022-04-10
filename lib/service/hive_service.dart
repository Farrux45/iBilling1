import 'package:hive/hive.dart';
import 'package:ibilding/model/card_name_model.dart';

class ContBox {
  static Box<NameModel> contBox() => Hive.box<NameModel>('contracts');
}