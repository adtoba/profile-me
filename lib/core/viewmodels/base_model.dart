import 'package:flutter/widgets.dart';
import 'package:profile_me/constants/status.dart';
import 'package:profile_me/core/enums/viewstate.dart';

class BaseModel extends ChangeNotifier {
  Status _status = Status.LOADED;

  Status get status => _status;

  void setStatus(Status status) {
    _status = status;
    notifyListeners();
  }
}