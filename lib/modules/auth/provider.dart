import 'package:flutter/material.dart';
import 'auth.dart';

abstract class Auth {
  void auth();
}

class AuthViewModel
    with ChangeNotifier, AuthVariables, DocValidator
    implements Auth {
  @override
  void auth() {
    authState = AuthState.waiting;

    if (formKey.currentState!.validate()) {
      if (docController.text == '1') {
        authState = AuthState.authSuccess;
      } else {
        authState = AuthState.authError;
      }
    } else {
      authState = AuthState.validationError;
    }

    notifyListeners();
  }
}
