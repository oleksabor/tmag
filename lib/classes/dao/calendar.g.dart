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
    return Calendar()..days = (fields[0] as List).cast<DayUnit>();
  }

  @override
  void write(BinaryWriter writer, Calendar obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.days);
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
