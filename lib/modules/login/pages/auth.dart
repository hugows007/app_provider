import 'package:app_testes/modules/login/provider.dart';
import 'package:app_testes/modules/login/states/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final provider = context.read<AuthViewModel>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Form(
              key: provider.formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: provider.docController,
                    validator: (doc) => provider.docValidator(doc),
                  ),
                  const _FeedbackComponent(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => provider.auth(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _FeedbackComponent extends StatelessWidget {
  const _FeedbackComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return context.select<AuthViewModel, dynamic>(
      (p) => Text(
        '${p.authState.message}',
        style: TextStyle(
          color:
              p.authState == AuthState.authSuccess ? Colors.green : Colors.red,
        ),
      ),
    );
  }
}
