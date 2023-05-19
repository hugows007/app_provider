import 'package:flutter/cupertino.dart';
import '../auth.dart';

mixin AuthVariables {
  TextEditingController docController = TextEditingController();

  AuthState authState = AuthState.waiting;
  final formKey = GlobalKey<FormState>();
}