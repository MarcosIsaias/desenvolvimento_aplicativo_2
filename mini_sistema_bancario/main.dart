import 'agencia.dart';
import 'conta_corrente.dart';
import 'endereco.dart';
import 'gerente.dart';
import 'pessoafisica.dart';
import 'pessoajuridica.dart';

void main() {
  var endereco = Endereco("Rua A", "12-A", "Centro", "POA", "RS");

  var gerente = Gerente(
      123, 456, "Paulo", "000", "111", "77777", endereco, "paulo@gmail.com");

  var clientePJ = PessoaJuridica(
      "123/0001",
      "João e Maria LTDA.",
      "Padaria Sonho de pão",
      "5555",
      endereco,
      "contato@padariasonhodepao.com.br");

  var clientePF = PessoaFisica("Maria José", "111", "222", "6666", endereco);

  var contaPF = ContaCorrente(
    100,
    "123.0",
    Agencia(2, gerente, endereco),
    clientePF,
    100,
  );

  var contaPJ = ContaCorrente(
    100,
    "124.0",
    Agencia(2, gerente, endereco),
    clientePJ,
    100,
  );

  var contaDoGerente = ContaCorrente(
    100,
    "124.0",
    Agencia(2, gerente, endereco),
    gerente,
    100,
  );

  print(contaPF);
  print(contaPJ);
  print(contaDoGerente);
}
