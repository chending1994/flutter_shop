import 'package:dio/dio.dart';
import 'dart:async';
import 'dart:io';
import '../config/service_url.dart';


Future getHomePageContent() async {
  try{
    Response response;
    Dio dio = new Dio();
    // dio.options.contentType = ContentType.parse("application/x-www-form-urlencoded");
    dio.options.contentType = Headers.formUrlEncodedContentType;

    var formDate = {'lon': '115.02932', 'lat': '35.76189' };
    response = await dio.post(servicePath['homePageContent'], data: formDate);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception('接口异常');
    }
  }catch(e) {
    print('ERROR:======>${e}');
  }
}