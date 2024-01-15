import 'package:flutter/foundation.dart';

class SigninPageProvider extends ChangeNotifier {
  bool _hidePassword = true;

  bool get hidePassword => _hidePassword;

  void setHidePassword() {
    _hidePassword = !_hidePassword;
    notifyListeners();
  }
}
