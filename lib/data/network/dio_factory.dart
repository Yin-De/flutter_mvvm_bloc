import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../app/constant.dart';

class DioFactory {
  Future<Dio> getDio() async {
    Dio dio = Dio();
    dio.options = BaseOptions(
        baseUrl: Constant.baseUrl,
        receiveTimeout: const Duration(minutes: 1),
        connectTimeout: const Duration(minutes: 1),
        contentType: 'application/json',
        headers: {
          'X-RapidAPI-Key':
              'd14d3e46a2msh312b0630ac4d34ap146d0djsn2421e876eab3',
          'X-RapidAPI-Host': 'moviesdatabase.p.rapidapi.com',
          'contentType': 'application/json'
        });

    if (kReleaseMode) {
      print("not enabled");
    } else {
      dio.interceptors.add(PrettyDioLogger(
          requestHeader: true, requestBody: true, responseHeader: true));
    }

    return dio;
  }
}
