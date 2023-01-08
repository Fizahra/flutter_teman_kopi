import 'package:flutter_teman_kopi/data/data_sources/remote/staff_remote_data_source.dart';
import 'package:flutter_teman_kopi/data/models/staff_model.dart';
import 'package:flutter_teman_kopi/domain/repositories/staff_repository.dart';

class StaffRepositoryImpl implements StaffRepository {
  StaffRepositoryImpl({required this.staffRemoteDataSource});

  final StaffRemoteDataSource staffRemoteDataSource;

  @override
  Future<List<StaffModel>> fetch() async {
    return await staffRemoteDataSource.fetch();
  }
}
