import 'package:flutter/material.dart';
import 'package:profile_me/constants/endpoints.dart';
import 'package:profile_me/constants/status.dart';
import 'package:profile_me/core/viewmodels/home_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeModel>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text('Profile me', style: TextStyle(color: Colors.white)),
        centerTitle: false,
      ),
      body: Consumer<HomeModel>(
        builder: (context, model, child) => Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: _userNameController,
                      decoration: InputDecoration(
                          hintText: 'Search github profile',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),

                    Visibility(
                      visible: model.myStatus == Status.LOADING ? true : false,
                      child: CircularProgressIndicator(),
                    ),
                    GestureDetector(
                      onTap: () async {
                        model.getGithubProfile(
                            "$BASE_URL$USERS${_userNameController.text}");
                      },
                      child: Container(
                        width: 300.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Center(
                          child: Text('SEARCH',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
