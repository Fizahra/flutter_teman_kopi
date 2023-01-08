import 'package:flutter_teman_kopi/domain/entities/staff_entity.dart';

class StaffModel extends StaffEntity {
  StaffModel.fromJson(Map<String, dynamic> json)
      : super(
          id: json['ID'],
          nama: json['nama'],
          posisi: json['posisi'],
          shift: json['shift'],
        );

  Map<String, dynamic> toJson() => {
        'staff': {
          'ID': id,
          'nama': nama,
          'posisi': posisi,
          'shift': shift,
        }
      };
}
