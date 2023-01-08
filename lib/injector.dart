import 'package:dio/dio.dart';
import 'package:flutter_teman_kopi/data/data_sources/remote/staff_remote_data_source.dart';
import 'package:flutter_teman_kopi/data/repositories/staff_repositories_impl.dart';
import 'package:flutter_teman_kopi/domain/repositories/staff_repository.dart';
import 'package:flutter_teman_kopi/domain/use_cases/fetch_staff_use_case.dart';
import 'package:flutter_teman_kopi/presentation/blocs/staff/staff_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory(() => StaffBloc(fetchStaffUseCase: sl()));

  sl.registerLazySingleton(() => FetchStaffUseCase(staffRepository: sl()));

  sl.registerLazySingleton<StaffRepository>(
      () => StaffRepositoryImpl(staffRemoteDataSource: sl()));

  sl.registerLazySingleton<StaffRemoteDataSource>(
      () => StaffRemoteDataSourceImpl(dio: sl()));

  sl.registerLazySingleton(() => Dio());
}
