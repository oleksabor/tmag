// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CalendarAdapter extends TypeAdapter<Calendar> {
  @override
  final int typeId = 6;

  @override
  Calendar read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Calendar()
      ..days = (fields[0] as List).cast<DayUnit>()
      ..subTitle = fields[1] as String
      ..title = fields[2] as String;
  }

  @override
  void write(BinaryWriter writer, Calendar obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.days)
      ..writeByte(1)
      ..write(obj.subTitle)
      ..writeByte(2)
      ..write(obj.title);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CalendarAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
