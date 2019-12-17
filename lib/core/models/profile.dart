import 'package:meta/meta.dart';
import 'package:flutter/material.dart';

class Profile {

  const Profile({
    @required this.name,
    @required this.email,
    @required this.bio,
    @required this.followers,
    @required this.url,
    @required this.avatarUrl
  });

  final String name;
  final String avatarUrl;
  final String bio;
  final int followers;
  final String email;
  final String url;

  String get namee => this.name;


  factory Profile.fromJson(Map<String, dynamic> jsonResponse) {
    return Profile(
      name: jsonResponse['name'],
      email: jsonResponse['email'],
      bio:  jsonResponse['bio'],
      url: jsonResponse['url'],
      avatarUrl: jsonResponse['avatar_url'],
      followers: jsonResponse['followers'] 
    );
  }
}