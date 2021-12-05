import 'package:shared_preferences/shared_preferences.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
import 'dart:async';
import 'dart:io';


Future<Dio> dio() async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();

  return Dio(
    BaseOptions(
      baseUrl: Constants.baseUrl,
      headers: {
        "Authorization": 'Bearer ${_prefs.getString(PreferencesKeys.token)}'
      },
    ),
  );
}

String getParams(Map body) =>
    body.keys.map((key) => '$key=${body[key]}').toList().join("&");

ApiErrorRepsonse handleError(error) {
  if (error is DioError) {
    if (error.error is SocketException) {
      throw ApiErrorRepsonse(
        code: ResponseCodes.networkConnection,
        message: "Internet not found try to change your network or try again",
      );
    } else if (error.error is TimeoutException) {
      throw ApiErrorRepsonse(
        code: ResponseCodes.timeout,
        message:
            "Taking too much time try to change your network or try again!",
      );
    } else if (error.response!.statusCode! >= 400 &&
        error.response!.statusCode! < 500) {
      throw ApiErrorRepsonse.fromJson(error.response?.data ?? {});
    } else if (error.response!.statusCode! >= 500 &&
        error.response!.statusCode! < 600) {
      throw ApiErrorRepsonse(
        code: ResponseCodes.unknown,
        message: "Undetedcted issue found, kindly try again!",
      );
    } else {
      throw ApiErrorRepsonse(
        code: ResponseCodes.unknown,
        message: "Undetedcted issue found, kindly try again!",
      );
    }
  } else
    throw ApiErrorRepsonse(
      code: ResponseCodes.unknown,
      message: "Undetedcted issue found, kindly try again!",
    );
}

class ApiErrorRepsonse {
  late bool status;
  late String? code;
  late Object? data;
  late int? timestamp;
  late String message;

  ApiErrorRepsonse({
    this.data,
    this.code,
    this.timestamp,
    this.message = "",
    this.status = false,
  });

  ApiErrorRepsonse.fromJson(Map<String, dynamic> json) {
    data = json["data"];
    code = json["code"];
    status = json["status"];
    message = json["message"];
    timestamp = json["timestamp"];
  }
}

class Api {
  static Future<dynamic> get(
    String url, {
    Map? body,
    Function(ApiErrorRepsonse)? onError,
  }) async {
    try {
      var response = await (await dio()).get('$url?${getParams(body ?? {})}');
      return response.data;
    } catch (error) {
      throw handleError(error);
    }
  }

  static Future<dynamic> post(String url, {Object? body}) async {
    try {
      var response = await (await dio()).post(url, data: body);
      return response.data;
    } catch (error) {
      throw handleError(error);
    }
  }

  static Future<dynamic> put(String url, {Object? body}) async {
    try {
      var response = await (await dio()).put(url, data: body);

      return jsonDecode(response.data);
    } catch (error) {}
  }

  static Future<dynamic> delete(String url, {Object? body}) async {
    try {
      var response = await (await dio()).delete(url, data: body);
      return response.data;
    } catch (error) {
      throw handleError(error);
    }
  }
}
