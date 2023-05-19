import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'modules/auth/auth.dart';

void main() {
  runApp(const MyApp());
}

class Routes {
  static const String auth = '/auth';
}

class Pages {
  dynamic pages = {
    Routes.auth: (ctx) => MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (_) => AuthViewModel(),
            ),
          ],
          child: const AuthPage(title: 'Login'),
        ),
  };
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Testes',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: Routes.auth,
      routes: Pages().pages,
    );
  }
}
