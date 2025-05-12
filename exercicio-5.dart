// // Crie uma classe Carro com atributos privados para marca, modelo e ano  
// Implemente getters e setters para todos os atributos  
// Adicione um método para calcular a idade do carro  
// Crie um construtor que aceite todos os atributos  
// Adicione um método para exibir todas as informações do carro

void main(){
    Carro meuCarro = Carro('Toyota', 'Corolla', 2022);
    meuCarro.exibirInformacoes();
  }

class Carro {
  String _marca;
  String _modelo;
  int _ano;

  Carro (this._marca, this._modelo, this._ano);

  String get marca => _marca;
  String get modelo => _modelo;
  int get ano => _ano;

  set marca(String novaMarca) {
    _marca = novaMarca;
  }
  set modelo(String novoModelo) {
    _modelo = novoModelo;
  } 
  set ano(int novoAno) {
    _ano = novoAno;
  }
  int calcularIdade() {
    return DateTime.now().year - _ano;
  }
  void exibirInformacoes() {
    print('Marca: $_marca');
    print('Modelo: $_modelo');
    print('Ano: $_ano');
  }

}

