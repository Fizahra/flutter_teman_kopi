import 'package:dio/dio.dart';
import 'package:flutter_teman_kopi/data/models/staff_model.dart';

//dartimport
abstract class StaffRemoteDataSource {
  Future<List<StaffModel>> fetch();
}

class StaffRemoteDataSourceImpl implements StaffRemoteDataSource {
  final Dio dio;
  //url localhost untuk emulator android
  //final String baseUrl = 'http://10.0.2.2:8080/staff';

  //url localhost untuk emulator ios
  //final String baseUrl = 'http://127.0.0.1:8080/staff';

  //url localhost default(hanya bisa untuk emulator ios)
  final String baseUrl = 'http://localhost:8080/staff';

  StaffRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<StaffModel>> fetch() async {
    try {
      List<StaffModel> listStaff = [];
      final response = await dio.get(baseUrl);
      for (var data in response.data['data']) {
        StaffModel staff = StaffModel.fromJson(data);
        listStaff.add(staff);
      }
      return listStaff;
    } on DioError catch (e) {
      throw (DioError(
          requestOptions: e.requestOptions,
          response: e.response,
          type: e.type,
          error: e.error));
    } on Exception catch (e) {
      throw e.toString();
    }
  }
}
