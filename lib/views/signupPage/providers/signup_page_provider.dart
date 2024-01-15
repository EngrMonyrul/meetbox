import 'package:flutter/foundation.dart';

class SignupPageProvider extends ChangeNotifier {
  bool _hidePassword = true;
  bool _hideConfirmPassword = true;

  bool get hidePassword => _hidePassword;

  bool get hideConfirmPassword => _hideConfirmPassword;

  void setHidePassword() {
    _hidePassword = !_hidePassword;
    notifyListeners();
  }

  void setHideConfirmPassword() {
    _hideConfirmPassword = !_hideConfirmPassword;
    notifyListeners();
  }
}
