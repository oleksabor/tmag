// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WorkTypeAdapter extends TypeAdapter<WorkType> {
  @override
  final int typeId = 1;

  @override
  WorkType read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WorkType()..title = fields[0] as String;
  }

  @override
  void write(BinaryWriter writer, WorkType obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.title);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WorkTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
