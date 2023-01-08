import 'package:flutter_teman_kopi/data/models/staff_model.dart';

abstract class StaffRepository {
  Future<List<StaffModel>> fetch();
}
