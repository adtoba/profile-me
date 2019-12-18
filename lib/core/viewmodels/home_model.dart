import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:profile_me/constants/status.dart';
import 'package:profile_me/core/models/profile.dart';
import 'package:profile_me/core/services/api.dart';
import 'package:profile_me/core/viewmodels/base_model.dart';
import 'package:profile_me/locator.dart';
import 'package:provider/provider.dart';

class HomeModel extends BaseModel {
  Api _api = locator<Api>();

  String userEmail;

  Future<Response> getAccount(String userName) async {
    setStatus(Status.LOADING);
    var response = await _api.getUserAccount(userName);
    setStatus(Status.LOADED);

    return response;

  }
}
