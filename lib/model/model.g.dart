// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NameModelAdapter extends TypeAdapter<NameModel> {
  @override
  final int typeId = 0;

  @override
  NameModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NameModel(
      id: fields[0] as int?,
      name: fields[1] as String?,
      amount: fields[2] as String?,
      number: fields[3] as String?,
      adress: fields[4] as String?,
      itnIec: fields[5] as String?,
      date: fields[6] as String?,
      status: fields[7] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, NameModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.amount)
      ..writeByte(3)
      ..write(obj.number)
      ..writeByte(4)
      ..write(obj.adress)
      ..writeByte(5)
      ..write(obj.itnIec)
      ..writeByte(6)
      ..write(obj.date)
      ..writeByte(7)
      ..write(obj.status);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NameModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
