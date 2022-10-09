// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_unit.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WorkUnitAdapter extends TypeAdapter<WorkUnit> {
  @override
  final int typeId = 4;

  @override
  WorkUnit read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WorkUnit(
      fields[0] as TimeUnit,
      fields[2] as int,
      resId: fields[1] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, WorkUnit obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.time)
      ..writeByte(1)
      ..write(obj.resId)
      ..writeByte(2)
      ..write(obj.typeId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WorkUnitAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
