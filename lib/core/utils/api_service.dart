import 'package:dio/dio.dart';

class ApiService {
  Dio dio = Dio();

   Future<Response<dynamic>> post({
    required body,
    required String url,
    required String token,
    required String contentType,
  }) async {
    var response = await dio.post(
      url,
      data: body,
      options: Options(
        contentType: Headers.formUrlEncodedContentType,
        headers: {
          'Authorization': 'Bearer $token',
        },
      ),
    );
    return response;
  }
}
