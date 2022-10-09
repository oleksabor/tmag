// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_unit.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DayUnitAdapter extends TypeAdapter<DayUnit> {
  @override
  final int typeId = 5;

  @override
  DayUnit read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DayUnit(
      fields[1] as DateTime,
    )..items = (fields[0] as List).cast<WorkUnit>();
  }

  @override
  void write(BinaryWriter writer, DayUnit obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.items)
      ..writeByte(1)
      ..write(obj.day);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DayUnitAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
