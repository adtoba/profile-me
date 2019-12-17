import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show Response;
import 'dart:async';

const String _CONTENT_TYPE = "application/json";


class GithubProfile {

  static Map<String, String> get httpHeaders => <String, String> {
    HttpHeaders.contentTypeHeader: _CONTENT_TYPE
  };

   Future<Response> githubProfile(String url) {
    try {
      return http.get(
      "$url",
      headers: httpHeaders
    );

    } on Exception {
      throw Exception('get');
    }
    

      
  }
  
  
}