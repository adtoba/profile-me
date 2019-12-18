import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show Response;
import 'package:profile_me/constants/endpoints.dart';
import 'package:profile_me/core/models/profile.dart';

const String _CONTENT_TYPE = "application/json";


class Api {
  static Map<String, String> get httpHeaders => <String, String> {
    HttpHeaders.contentTypeHeader : _CONTENT_TYPE
  };

 
  Future<Response> getUserAccount(String username) async{
    
    var response = await http.get(
      '$BASE_URL$USERS$username',
      headers: httpHeaders
    );

    print(response.body);


    return response;
  }

}