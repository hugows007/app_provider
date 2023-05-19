enum AuthState {
  waiting,
  authError,
  validationError,
  authSuccess,
}

extension AuthStateMessage on AuthState {
  get message {
    switch (this) {
      case AuthState.waiting:
        return 'Insira seus dados';
      case AuthState.authError:
        return 'Erro ao autenticar';
      case AuthState.validationError:
        return 'Verifique os campos informados';
      case AuthState.authSuccess:
        return 'Autenticado com sucesso!';
      default:
        return '';
    }
  }
}