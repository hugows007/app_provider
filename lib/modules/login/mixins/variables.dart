import 'package:flutter/cupertino.dart';

import '../states/auth_state.dart';

mixin AuthVariables {
  TextEditingController docController = TextEditingController();

  AuthState authState = AuthState.waiting;
  final formKey = GlobalKey<FormState>();
}