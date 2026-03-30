import '../model/usuario.dart';

class Autenticacao {
  Usuario? _usuario;

  bool login(String email, String senha) {
    if (_usuario != null &&
        _usuario!.email == email &&
        _usuario!.senha == senha) {
      return true;
    }
    return false;
  }

  bool cadastrar(String email, String senha, String confirmarSenha) {
    if (senha == confirmarSenha) {
      _usuario = Usuario(email: email, senha: senha);
      return true;
    }
    return false;
  }

  bool alterarSenha(String novaSenha, String confirmarSenha) {
    if (_usuario != null && novaSenha == confirmarSenha) {
      _usuario!.senha = novaSenha;
      return true;
    }
    return false;
  }
}