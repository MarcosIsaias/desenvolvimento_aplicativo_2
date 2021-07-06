import 'endereco.dart';
import 'pessoafisica.dart';

class Gerente extends PessoaFisica {
  int _matricula;
  int _ramal;
  // Por herança: nome, telefone, email, endereco

  // Método construtor
  Gerente(
    this._matricula,
    this._ramal,
    String vNome,
    String vRG,
    String vCPF,
    String vTelefone,
    Endereco vEndereco,
    String vEmail,
  ) : super(
          vNome,
          vRG,
          vCPF,
          vTelefone,
          vEndereco,
          vEmail,
        );

  int get matricula => this._matricula;
  int get ramal => this._ramal;

  String? get obterEndereco =>
      "Logradouro ${this.endereco.rua} n° ${this.endereco.numero} no bairro ${this.endereco.bairro}/${this.endereco.cidade}";

  String? get dadosTelefonicos =>
      "Tel: ${this.telefoneParaContato} / Ramal ${this.ramal}";

  set matricula(int matricula) {
    this._matricula = matricula;
  }

  set ramal(int ramal) {
    this._ramal = ramal;
  }
}
