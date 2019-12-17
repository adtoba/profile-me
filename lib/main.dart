import 'package:flutter/material.dart';
import 'package:profile_me/core/viewmodels/home_model.dart';
import 'package:profile_me/locator.dart';
import 'package:profile_me/repo/github_repo.dart';
import 'package:profile_me/ui/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (_) => locator<HomeModel>() ,)
      ],
          child: MaterialApp(
        title: 'Profile Me',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}

