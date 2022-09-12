// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_unit.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TimeUnitAdapter extends TypeAdapter<TimeUnit> {
  @override
  final int typeId = 3;

  @override
  TimeUnit read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TimeUnit(
      fields[0] as Time,
      fields[1] as Duration,
    );
  }

  @override
  void write(BinaryWriter writer, TimeUnit obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.from)
      ..writeByte(1)
      ..write(obj.duration);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TimeUnitAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
