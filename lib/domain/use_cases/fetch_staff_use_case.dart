import 'package:flutter_teman_kopi/data/models/staff_model.dart';
import 'package:flutter_teman_kopi/domain/repositories/staff_repository.dart';

class FetchStaffUseCase {
  FetchStaffUseCase({required this.staffRepository});

  final StaffRepository staffRepository;

  Future<List<StaffModel>> call() async {
    return await staffRepository.fetch();
  }
}
