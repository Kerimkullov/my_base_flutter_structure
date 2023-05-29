import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:my_beeline/core/services/http_service/exceptions/server_exception.dart';

import 'configs.dart';

@injectable
class ApiClient {
  /// constructor
  ApiClient() {
    dio = Dio(baseOptions)
      ..interceptors.add(
        InterceptorsWrapper(
          /// On Request api option
          onRequest: (
            RequestOptions options,
            RequestInterceptorHandler handler,
          ) async {
            /// Add logic to handle temporary token
            ///
            /// example
            // final accessToken = await _secureStorage.read(key: accessTokenKey);

            // if (kDebugMode) {
            //   print(options.data);
            // }
            // if (options.path.startsWith('managed') && accessToken != null) {
            //   options.headers['Authorization'] = 'Bearer $accessToken';
            // }

            // log('REQUEST[${options.method}] => PATH: ${options.path}');
            return handler.next(options);
          },

          /// On Error api option
          onError: (DioError err, ErrorInterceptorHandler handler) async {
            /// Add logic to handle 401 api error to refresh api
            ///
            /// example
            // final accessToken = await _secureStorage.read(
            //       key: accessTokenKey,
            //     ) ??
            //     '';
            // if (err.response?.statusCode == 401 && accessToken.isNotEmpty) {
            //   /// If error status code is Unauthorized
            //   /// then we send refresh token request
            //   await _refreshToken();

            //   /// After refreshing token we send retry last request
            //   await _retry(err.requestOptions);
            //   return;
            // }
            return handler.next(err);
          },

          /// On Response api option
          onResponse: (
            Response<dynamic> response,
            ResponseInterceptorHandler handler,
          ) {
            handler.next(response);
          },
        ),
      );
  }

  /// dio client
  late final Dio dio;

  // final FlutterSecureStorage _secureStorage;

  /// base url

  /// headers

  /// baseOptions
  BaseOptions get baseOptions => BaseOptions(
        baseUrl: Configs.apiBaseUrl,
      );

  /// GET request
  Future<dynamic> get(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
    bool forceRefresh = true,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await dio.get<dynamic>(
        endpoint,
        cancelToken: cancelToken,
        queryParameters: queryParameters,
        options: options,
      );

      _validateResponse(response);

      return response.data;
    } on DioError catch (e) {
      _handleError(e);
    }
  }

  /// POST request
  Future<dynamic> post(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
    Options? options,
  }) async {
    try {
      final response = await dio.post<dynamic>(
        endpoint,
        queryParameters: queryParameters,

        /// If 415 code comes from api please change data format
        data: body,
        options: options,
      );

      _validateResponse(response);

      return Map<String, dynamic>.from(response.data as Map);
    } on DioError catch (e) {
      _handleError(e);
    }
  }

  /// PATCH request
  Future<dynamic> patch(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  }) async {
    try {
      final response = await dio.patch<dynamic>(
        endpoint,
        queryParameters: queryParameters,
        data: json.encode(body),
      );

      _validateResponse(response);

      return response.data;
    } on DioError catch (e) {
      _handleError(e);
    }
  }

  /// DELETE request
  Future<void> delete(String endpoint) async {
    try {
      final response = await dio.delete<dynamic>(
        endpoint,
      );

      _validateResponse(response);

      return response.data;
    } on DioError catch (e) {
      _handleError(e);
    }
  }

  /// PUT request
  Future<dynamic> put(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  }) async {
    try {
      final response = await dio.put<dynamic>(
        endpoint,
        queryParameters: queryParameters,
        data: json.encode(body),
      );

      _validateResponse(response);

      return response.data;
    } on DioError catch (e) {
      _handleError(e);
    }
  }

  void _validateResponse(Response<dynamic> response) {
    final statusCode = response.statusCode ?? 0;

    if (response.data == null || statusCode < 200 || statusCode > 304) {
      throw ServerException(response.statusMessage, response.statusCode ?? 0);
    }
  }

  void _handleError(DioError e) {
    if (e.type == DioErrorType.cancel) {
      //Suppress cancellation errors

      return;
    }

    log('exception: ${e.response?.statusCode}');
    log('exception: ${e.response?.data}');
    final exception = ServerException.fromDio(e);

    throw exception;
  }

  // TODO:(Dastan) Uncomment to retry api call in future
  // Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
  //   final options = Options(
  //     method: requestOptions.method,
  //     headers: requestOptions.headers,
  //   );
  //   return dio.request<dynamic>(
  //     requestOptions.path,
  //     data: requestOptions.data,
  //     queryParameters: requestOptions.queryParameters,
  //     options: options,
  //   );
  // }

  /// Add logic to handle _refreshToken
  ///
  /// example

  // Future<void> _refreshToken() async {
  //   /// Getting refresh token from local DB
  //   final refreshToken = await _secureStorage.read(key: 'refresh_token');

  //   final response = await dio.post<void>(
  //     'managed/token',
  //     queryParameters: {'grant_type': 'refresh_token'},
  //     options: Options(
  //       headers: {'Authorization': 'Bearer $refreshToken'},
  //     ),
  //   );
  //   if (response.statusCode == 200) {
  //     final authToken =
  //         AuthToken.fromJson((response.data as Map<String, dynamic>?) ?? {});

  //     await _secureStorage.write(
  //       key: 'access_token',
  //       value: authToken.accessToken,
  //     );
  //     await _secureStorage.write(
  //       key: 'refresh_token',
  //       value: authToken.refreshToken,
  //     );
  //   }
  // }
}
