import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_teman_kopi/data/models/staff_model.dart';

//dartimport
abstract class StaffRemoteDataSource {
  Future<List<StaffModel>> fetch();
}

class StaffRemoteDataSourceImpl implements StaffRemoteDataSource {
  final Dio dio;

  StaffRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<StaffModel>> fetch() async {
    log('ini log');
    try {
      List<StaffModel> listStaff = [];
      final response = await dio.get('http://localhost:8080/staff');
      log('INI HEY : ${response.data}');
      // for (var data in response.data['data']) {
      //   StaffModel staff = StaffModel.fromJson(data);
      //   listStaff.add(staff);
      // }
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
