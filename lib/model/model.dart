import 'package:hive/hive.dart';

part 'model.g.dart';

@HiveType(typeId: 0)
class NameModel {
  NameModel(
      {this.id,
      this.name,
      this.amount,
      this.number,
      this.adress,
      this.itnIec,
      this.date,
      this.status});

  @HiveField(0)
  int? id;
  @HiveField(1)
  String? name;
  @HiveField(2)
  String? amount;
  @HiveField(3)
  String? number;
  @HiveField(4)
  String? adress;
  @HiveField(5)
  String? itnIec;
  @HiveField(6)
  String? date;
  @HiveField(7)
  int? status;
}
