import 'dart:io';
import 'package:flutter_redux_architecture/redux/index.dart';
import 'package:flutter_redux_architecture/utils/index.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class ApiService {
  Future<dynamic> get(String url, header) async {
    print('Api Get, url $url');
    var responseJson;
    try {
      final response = await http.get(url, headers: header);
      responseJson = await responseHandler(response);
    } on SocketException {
      print('No net');
      throw FetchDataException('No internet connection');
    }
    print('api get recieved!');
    return responseJson;
  }

  Future<dynamic> post(String url, dynamic header, dynamic body) async {
    print('Api Post, url $url');
    var responseJson;
    try {
      final response = await http.post(url, headers: header, body: body);
      responseJson = await responseHandler(response);
    } on SocketException {
      print('No net');
      throw ('No Internet connection');
    }
    print('api post.');
    return responseJson;
  }

  Future<dynamic> put(String url, dynamic header, dynamic body) async {
    print('Api Put, url $url');
    var responseJson;
    try {
      final response =
          await http.put(apiBaseUrl + url, headers: header, body: body);
      responseJson = await responseHandler(response);
    } on SocketException {
      print('No net');
      throw FetchDataException('No Internet connection');
    }
    print('api put.');
    return responseJson;
  }

  Future<dynamic> delete(String url, dynamic header) async {
    print('Api delete, url $url');
    var responseJson;
    try {
      final response = await http.delete(apiBaseUrl + url, headers: header);
      responseJson = await responseHandler(response);
    } on SocketException {
      print('No net');
      throw FetchDataException('No Internet connection');
    }
    print('api delete.');
    return responseJson;
  }
}
