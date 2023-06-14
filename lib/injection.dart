import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:project_manger/screens/chat/api/chat_remote.dart';


import 'constants/api_constant.dart';

import 'globals.dart';
import 'screens/chat/bloc/chat_bloc.dart';
import 'screens/courses/bloc/courses_bloc.dart';
import 'screens/home/bloc/home_bloc.dart';
import 'screens/main/bloc/main_bloc.dart';
final sl = GetIt.instance;

///
/// The [init] function is responsible for adding the instances to the graph
///
Future<void> init() async {
  sl.registerLazySingleton(
    () {
      final dio = Dio(
        BaseOptions(
          connectTimeout: 12000,
          receiveTimeout: 12000,
          baseUrl: MyUrls.baseUrl,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Accept-Language': lan,
          },
          responseType: ResponseType.plain,
          followRedirects: true,
          validateStatus: (status) {
            return status! < 500;
          },
        ),
      );
      dio.interceptors.add(
        LogInterceptor(
          responseBody: true,
          requestBody: true,
          responseHeader: true,
          requestHeader: true,
          request: true,
        ),
      );
      return dio;
    },
  );
  sl.registerLazySingleton(() => DataConnectionChecker());


  sl.registerLazySingleton<ChatRemoteDataSource>(
        () => ChatRemoteDataSourceImpl(dio: sl(), networkInfo: sl()),
  );


  // Bloc

  sl.registerLazySingleton(() => MainBloc());
  sl.registerLazySingleton(() => HomeBloc());
  sl.registerLazySingleton(() => CoursesBloc());
  sl.registerLazySingleton(() => ChatBloc(chatRemoteDataSource: sl()));

}
