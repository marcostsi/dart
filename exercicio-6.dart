// Crie uma hierarquia de classes para um sistema bancário  
// Inclua uma classe abstrata Conta com método abstrato sacar
// Implemente subclasses ContaPoupanca e ContaCorrente
// Adicione atributos estáticos para contar o número de contas
// Implemente construtores, getters e setters apropriados 

void main() {
  ContaCorrente conta1 = ContaCorrente('João', 1000.0);
  ContaPoupanca conta2 = ContaPoupanca('Maria', 1500.0);

  conta1.depositar(500.0);
  conta1.sacar(300.0);

  print('---');

  conta2.depositar(200.0);
  conta2.sacar(1800.0); // Vai dar saldo insuficiente

  print('---');
  print('Total de contas criadas: ${Conta.totalContas}');
}

abstract class Conta {
  static int totalContas = 0;

  String _titular;
  double _saldo = 0;
  
  Conta(this._titular, this._saldo) {
    totalContas++;
  }

  String get titular => _titular;
  double get saldo => _saldo;

  set titular(String novoTitular){
    _titular = novoTitular;
  }

  set saldo(double novoSaldo) {
    _saldo = novoSaldo;
  }

  void depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
      print('Depósito de R\$${valor.toStringAsFixed(2)} realizado.');
    } else {
      print('Valor de depósito inválido!');
    }
  }

  void sacar(double valor);
}

class ContaCorrente extends Conta {
  ContaCorrente(String titular, double saldo) : super(titular, saldo);
  @override
  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
      print('Saque de R\$${valor.toStringAsFixed(2)} realizado da conta corrente.');
    } else {
      print('Saldo insuficiente na conta corrente.');
    }
  }
}

class ContaPoupanca extends Conta {
  ContaPoupanca(String titular, double saldo) : super(titular, saldo);
  @override
  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
      print('Saque de R\$${valor.toStringAsFixed(2)} realizado da conta poupança.');
    } else {
      print('Saldo insuficiente na conta poupança.');
    }
  }
}



