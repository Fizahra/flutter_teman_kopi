import 'package:flutter_teman_kopi/domain/entities/staff_entity.dart';

class StaffModel extends StaffEntity {
  StaffModel.fromJson(Map<String, dynamic> json)
      : super(
          id: json['id'],
          nama: json['nama'],
          posisi: json['posisi'],
          shift: json['shift'],
        );

  Map<String, dynamic> toJson() => {
        'data': {
          'id': id,
          'nama': nama,
          'posisi': posisi,
          'shift': shift,
        }
      };
}
