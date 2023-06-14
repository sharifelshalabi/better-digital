import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:path_provider/path_provider.dart';
import '../../../../../constants/api_constant.dart';

abstract class ChatRemoteDataSource {
  Future<dynamic> download({required String url});

}

class ChatRemoteDataSourceImpl extends ChatRemoteDataSource {
  final Dio dio;
  final DataConnectionChecker networkInfo;

  ChatRemoteDataSourceImpl({required this.dio, required this.networkInfo});

  @override
  Future<dynamic> download({required String url}) async {
    if (await networkInfo.hasConnection) {
      Directory? dir;
      if (Platform.isAndroid) {
        dir = await getApplicationDocumentsDirectory();
      } else {
        dir = await getLibraryDirectory();
      }
      String filePath = dir!.path + url;
      File file = File(filePath);
      bool isExist = await file.exists();
      if (isExist) {
        return Right(filePath);
      }
      else{
      try {

        Response result = await dio.download(
          url,
          filePath,
          options: Options(
              responseType: ResponseType.bytes,
              followRedirects: false,
              validateStatus: (status) {
                return status! < 500;
              }),
        );
        if (result.statusCode == 200 || result.statusCode == 201) {
          return Right(filePath);
        }
        return Left("Downloading failed".tr());
      } on DioError catch (ex) {
        if (ex.type == DioErrorType.connectTimeout) {
          return const Left(Er.networkError);
        }
        else if (ex.type == DioErrorType.receiveTimeout) {
          return const Left(Er.networkError);
        }
        return const Left(Er.error);
      } catch (e) {
        return const Left(Er.error);
      }
    }
  }
    else {
      return const Left(Er.networkError);
    }
  }

}
