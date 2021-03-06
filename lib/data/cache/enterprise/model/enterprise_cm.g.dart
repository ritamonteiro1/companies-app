// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enterprise_cm.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EnterpriseCMAdapter extends TypeAdapter<EnterpriseCM> {
  @override
  final int typeId = 0;

  @override
  EnterpriseCM read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EnterpriseCM(
      fields[0] as String,
      fields[1] as String,
      fields[2] as String,
      fields[3] as String,
      fields[4] as EnterpriseTypeCM,
      fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, EnterpriseCM obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.enterpriseName)
      ..writeByte(1)
      ..write(obj.photo)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.country)
      ..writeByte(4)
      ..write(obj.enterpriseType)
      ..writeByte(5)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EnterpriseCMAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
