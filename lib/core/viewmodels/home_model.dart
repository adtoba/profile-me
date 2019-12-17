import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:profile_me/constants/status.dart';
import 'package:profile_me/core/models/profile.dart';
import 'package:profile_me/locator.dart';
import 'package:profile_me/repo/github_repo.dart';
import 'package:provider/provider.dart';


class HomeModel extends ChangeNotifier {

  final GithubProfile _profile = locator<GithubProfile>();
  String url;
  Status status;

  Status get myStatus => status;

  Future<Response> getGithubProfile(String url) {
    setStatus(Status.LOADING);
    var response = _profile.githubProfile(url).then((response) {
      Map<String, dynamic> responseMap = json.decode(response.body);
      Profile profile = Profile.fromJson(responseMap);
      print('Response is: $responseMap');
      print('Username: ${profile.name}');

    });
    
    setStatus(Status.LOADED);
    return response;
  }

  setStatus(Status pstatus) {
    status = pstatus;
    notifyListeners();
  }





}