import 'dart:io';
import 'dart:collection';

void main() {
// 2.2 Tipos e Operadores
// 1. Declare uma variável inteira para armazenar a idade de uma pessoa e atribua o valor 28.
  int idade1 = 28;
  print(idade1);

// 2. Crie uma variável double para guardar a altura de uma pessoa em metros e atribua o valor 1.75.
  double altura = 1.75;
  print(altura);

// 3. Defina uma variável String para armazenar o nome de um animal de estimação e atribua um nome de sua escolha.
  String nomeAnimal = "Dog";
  print(nomeAnimal);

// 4. Crie uma variável bool para indicar se uma lâmpada está ligada e atribua o valor false.
  bool lampadaLigada = false;
  print(lampadaLigada);

// 5. Declare duas variáveis inteiras, a e b, com valores 10 e 3, respectivamente, e calcule a soma.
  int a = 10;
  int b = 3;
  int soma = a + b;
  print(soma);

// 6. Usando as variáveis do exercício anterior, calcule o resto da divisão de a por b.
  int c = 10;
  int d = 3;
  int resto = c % d;
  print(resto);

// 7. Crie uma variável double para o valor de uma compra e aplique um desconto de 10% usando operadores aritméticos.
  double valorCompra = 100;
  double valorComDesconto = valorCompra - (valorCompra * 0.10);
  print(valorComDesconto);
  
  
// 8. Defina uma variável String para o nome de um produto e concatene com o preço em uma frase.
  String nomeProduto = 'Camiseta';
  double preco = 49.90;
  String mensagem = 'O produto $nomeProduto custa R\$ $preco.';
  print(mensagem);

// 9. Declare uma lista (List) de três nomes de cidades e imprima o segundo nome.
  List<String> cidades = ['Picuí', 'Baraúna', 'Cuité'];
  print(cidades[1]);

// 10. Crie um conjunto (Set) com os números 1, 2, 3, 2 e mostre quantos elementos únicos existem.
  Set<int> valor = {1, 2, 3, 2};
  print('Quantidade de elementos únicos: ${valor.length}');

// 11. Crie um mapa (Map) para associar nomes de frutas a seus preços e acesse o preço de uma fruta específica.
  Map<String, double> nomeFrutas = {
    'Acelora': 10,
    'Maça': 2.50,
    'Banana': 1.80,
    'Laranja': 2.00,
    };
  print('O preço da Banana é R\$ ${nomeFrutas['Banana']}');

// 12. Declare uma variável dinâmica e atribua a ela um valor inteiro, depois mude para uma String.
  dynamic variavel = 42;
  print('Valor inteiro: $variavel');

  variavel = 'Agora sou uma String';
  print('Novo valor: $variavel');

// 13. Use o operador ternário para verificar se uma idade é maior ou igual a 18 e retorne "Maior de idade" ou "Menor de idade".
  int idade = 28;
  String resultado = idade >= 18 ? 'Maior de idade' : 'Menor de idade';
  print(resultado);
  

// 14. Utilize o operador de coalescência nula (??) para atribuir um valor padrão a uma variável que pode ser nula.
  String? nome;
  String nomeFinal = nome ?? 'Visitante';

  print('Olá, $nomeFinal!');

// 15. Crie uma variável final para armazenar o valor de PI e tente alterar seu valor após a atribuição.
  final double pi = 3.14159;
  print('O valor de PI é $pi');

// 2.3 Estruturas de Seleção e Estruturas de Repetição
// 16. Peça ao usuário para informar a idade e exiba "Maior de idade" se for 18 anos ou mais, ou "Menor de idade" caso contrário.
  int idade2 = 17;

  if (idade2 >= 18) {
    print('Maior de idade');
  } else {
    print('Menor de idade');
  }

// 17. Dada uma variável nota, use if/else para exibir "Aprovado" se a nota for maior ou igual a 7, "Recuperação" se for entre 5 e 6.9, e "Reprovado" se for menor que 5.
  double nota = 7;

  if (nota >= 7) {
    print("Aprovado");
  } else if (nota > 5 && nota < 7) {
    print("Recuperação");
  } else {
    print("Reprovado");
  }

// 18. Leia um número inteiro e use o operador ternário para exibir "Par" ou "Ímpar".
  int numero = 7; 
  String resultado3 = (numero % 2 == 0) ? 'Par' : 'Ímpar';
  print(resultado3);

// 19. Dado um número de 1 a 7, use switch/case para imprimir o nome do dia correspondente (1 = Domingo, 2 = Segunda, ...).
  int numero4 = 3;
  switch(numero4) {
    case 1:
      print('Domingo');
      break;
    case 2:
      print('Segunda');
      break;
    case 3:
      print('Terça');
      break;
    case 4:
      print('Quarta');
      break;
    case 5:
      print('Quinta');
      break;
    case 6:
      print('Sexta');
      break;
    case 7:
      print('Sábado');
      break;
    default:
      print('Número inválido. Digite um número de 1 a 7.');
  }

// 20. Receba três números inteiros e utilize estruturas de seleção para exibir o maior deles.
  int valor1 = 10;
  int valor2 = 25; 
  int valor3 = 56;

  int maior;

  if (valor1 >= valor2 && valor1 >= valor3) {
    maior = valor1;
  } else if (valor2 >= valor1 && valor2 >= valor3) {
    maior = valor2;
  } else {
    maior = valor3;
  }
  print('O maior valor é: $maior');

// 21. Use um loop for para imprimir os números de 10 até 1.
  for (int i = 10; i >= 1; i--){
    print(i);
  }

// 22. Some e exiba todos os números pares de 1 a 100 usando um loop.
  int somaPares = 0;
  for (int i = 1; i <= 100; i++) {
    if (i % 2 != 0) {
      somaPares += i;
      print(i);
    }
  }
  print('A soma dos números pares de 1 a 100 é: $somaPares');

// 23. Peça um número e mostre sua tabuada de 1 a 10 usando for ou while.
  stdout.write('Digite um número para ver a tabuada: ');
  int numero5 = int.parse(stdin.readLineSync()!);
  print('\nTabuada do $numero5:');
  for (int i = 1; i < 10; i++) {
    print('$numero5 x $i = ${numero5 * i}');
  }

  stdout.write('Digite um número para ver a tabuada: ');
  int numero6 = int.parse(stdin.readLineSync()!);
  int i = 1;
  print('\nTabuada do $numero6:');
  while (i <= 10) {
    print('$numero6 x $i = ${numero6 * i}');
    i++;
  }

// 24. Leia números do usuário até que ele digite um valor negativo, e então exiba quantos números foram digitados.
  int contador = 0;
  while (true) {
    stdout.write('Digite um número (negativo para sair): ');
    int numero7 = int.parse(stdin.readLineSync()!);

    if (numero7 < 0) {
      break;
    }
    contador++;
  }
  print('\nVocê digitou $contador número(s) positivos.');
  
// 25. Dada uma lista de nomes, use um for-in para imprimir cada nome em letras maiúsculas.
  List<String> nomes = ['ana', 'bruno', 'carla'];
  for (var nome in nomes) {
    print(nome.toUpperCase());
  }
// 2.4 Funções
// 26. Crie uma função chamada calcularAreaRetangulo que recebe dois parâmetros obrigatórios, base e altura, e retorna a área do retângulo.
  double calcularAreaRetangulo (double base, double altura) {
    return base * altura;
  }
  print(calcularAreaRetangulo(2,3));

// 27. Implemente uma função chamada apresentarPessoa que recebe o nome (obrigatório) e a idade (opcional posicional). Se a idade não for informada, apenas imprima o nome; caso contrário, imprima também a idade.
  void apresentarPessoa(String nome, [int? idade]) {
    if (idade == null)  {
      print("Nome: $nome");
    } else {
      print("Nome: $nome, Idade: $idade");
    }
  }
  apresentarPessoa("Maria", 25);

// 28. Escreva uma função chamada enviarEmail que recebe um destinatário obrigatório e dois parâmetros nomeados opcionais: assunto (com valor padrão "Sem assunto") e corpo (com valor padrão "Mensagem vazia"). Imprima uma mensagem simulando o envio do e-mail.
    void enviarEmail(String destinatario, {String assunto = "Sem assunto", String corpo = "Mensagem vazia"}) {
      print("Enviado email para: $destinatario");
      print("Assunto: $assunto");
      print("Corpo: $corpo");
    }
    enviarEmail("marcosplira12@gmail.com");

// 29. Considere o seguinte código de execução: print(somarLista([2, 4, 6, 8])); Implemente a função somarLista que recebe uma lista de inteiros e retorna a soma de todos os elementos.
  int somarLista(List<int> numeros8) {
    int soma = 0;
    for (int numero in numeros8) {
      soma += numero;
    }
    return soma;
  }
  print(somarLista([2, 4, 6, 8]));

// 30. Pesquise o que é uma função anônima no dart e crie uma função anônima atribuída a uma variável chamada saudacao que recebe um nome e imprime "Olá, [nome]!" quando chamada.
// Função anônima como uma função sem nome. Ela é criada para ser usada de forma rápida e simples, sem a necessidade de dar um nome a ela, como em funções tradicionais.
  var saudacao = (String nomedaVariavel) {
    print("Olá, $nomedaVariavel");
  };
  saudacao("João");
// 2.5 Coleções
// 31. Crie uma lista de inteiros chamada numeros com os valores ``. Adicione o número 40 ao final da lista e imprima o terceiro elemento (índice 2).
  List<int> numeros9 = [10, 20, 30];
  numeros9.add(40);
  print(numeros9[2]);

// 32. Dada a lista var frutas = ['maçã', 'banana', 'laranja', 'banana'], remova todas as ocorrências de 'banana' e imprima a lista resultante.
  var frutas = ['maça', 'banana', 'laranja', 'banana'];
  frutas.removeWhere((fruta) => fruta == 'banana');
  print(frutas);

// 33. Use o método map para transformar a lista `` em uma lista de strings no formato ['Número 1', 'Número 2', 'Número 3'].
  var listaOriginal = [1, 2, 3, 4, 5];
  var listaTexto = listaOriginal.map((numero) => 'Número $numero').toList();
  print(listaTexto);
  
// 34. Crie um conjunto var letras = {'a', 'b', 'c'}. Tente adicionar 'a' novamente e verifique se o conjunto ainda contém 'a' após a operação.
   var letras = {'a', 'b', 'c'};
   letras.add('a');
   print(letras.contains('a'));
   print(letras);
//  35. Dados os conjuntos set1 = {1, 2, 3} e set2 = {3, 4, 5}, calcule imprima a união e a interseção entre eles.
  var set1 = {1, 2, 3};
  var set2 = {3, 4, 5};
  var uniao = set1.union(set2);
  var intersecao = set1.intersection(set2);
  print('União: $uniao' );
  print('Interseção: $intersecao');

// 36. Converta a lista `` em um Set para remover duplicatas e exiba o resultado.
  var nomesComRepetidos = ['Ana', 'Carlos', 'Ana', 'Bruno', 'Carlos'];
  var nomesSemRepetidos = nomesComRepetidos.toSet();
  print(nomesSemRepetidos);

// 37. Crie um mapa var pessoa = {'nome': 'Ana', 'idade': 25}. Adicione a chave 'cidade' com valor 'São Paulo' e atualize 'idade' para 26.
  var pessoa = {
    'nome': 'Ana',
    'idade': 25
    };
    pessoa['cidade'] = 'São Paulo';
    pessoa['idade'] = 26;
    print(pessoa);

// 38. Verifique se o mapa var produtos = {'celular': 1500, 'notebook': 3000} contém a chave 'tablet'. Se não existir, adicione-a com valor 1000.
  var produtos = {
    'celular': 150,
    'notebook': 3000
  };
  if (!produtos.containsKey('tablet')) {
    produtos['tablet'] = 1000;
  }
  print(produtos);

// 39. Combine os mapas map1 = {'a': 1, 'b': 2} e map2 = {'c': 3} usando o operador de spread (...), resultando em {'a': 1, 'b': 2, 'c': 3}.
  var map1 = {'a': 1, 'b': 2};
  var map2 = {'c': 3};
  var combinado = {...map1, ...map2};
  print(combinado);

// 40. Crie uma Queue chamada fila e adicione os elementos 'primeiro', 'segundo', 'terceiro'. Remova o primeiro elemento e imprima o resultado.
  Queue<String> elementos = Queue<String>();
  elementos.add('primeiro');
  elementos.add('segundo');
  elementos.add('terceiro');
  print('Os elementos foram adicionado: $elementos');
  String saida = elementos.removeFirst();
  print('O elemento vai ser removido: $saida');

// 41. Use addFirst para inserir 0 no início da fila Queue<int> fila = Queue.from() e removeLast para remover o último elemento.
  Queue<int> fila = Queue.from([1, 2, 3, 4]);
  fila.addFirst(0);
  int ultimoValor = fila.removeLast();
  print(ultimoValor);

// 42. Converta a Queue fila = Queue.from() em uma lista e imprima o segundo elemento.
  Queue<String> fila1 = Queue.from(['1', '2', '3', '4', '5']);
  List<String> lista = fila1.toList();
  var segundo = lista[1];
  print(segundo);

// 43. Defina uma classe Node que estende LinkedListEntry<Node> com um campo valor. Crie uma LinkedList<Node> e adicione três nós com valores 10, 20, 30.
  var listadeElemento = LinkedList<Node>();
  listadeElemento.add(Node(10));
  listadeElemento.add(Node(20));
  listadeElemento.add(Node(30));

  for (var tarefa in listadeElemento) {
    print('Tarefa ${tarefa.numero10}');
  }
// 44. Na LinkedList<Node> criada anteriormente, remova o nó com valor 20 usando unlink() e imprima os valores restantes.
  listadeElemento.firstWhere((element) => element.numero10 == 20).unlink();
  print(listadeElemento);

// 45. Percorra a LinkedList<Node> usando um loop for-in e imprima cada valor multiplicado por 2.
  for (var Node in listadeElemento) {
    print('Lista de Elemento: ${Node.numero10 * 2}');
  }
// 2.6 OO
// 46. Crie uma classe Livro com as propriedades titulo, autor e anoPublicacao. Adicione um método exibirDetalhes() que retorna uma string formatada como "Título: [titulo], Autor: [autor], Ano: [ano]". Exemplo de uso:
// var livro = Livro('Dom Casmurro', 'Machado de Assis', 1899); print(livro.exibirDetalhes()); // Título: Dom Casmurro, Autor: Machado de Assis, Ano: 1899
var livro = Livro('Dom Casmurro', 'Machado de Assis', 1899); 
print(livro.exibirDetalhes()); 

// 47. Crie uma classe Contador com uma propriedade privada _valor (inicializada em 0) e um método público incrementar() que aumenta _valor em 1. Adicione um método resetar() que define _valor para 0.
  var contador1 = Contador1();
  contador1.incrementar();
  contador1.incrementar();
  print(contador1.valor);

  contador1.resetar();
  print(contador1.valor);

// 48. Crie uma classe Aluno com as propriedades nome e matricula. Implemente um construtor padrão que inicializa ambas as propriedades e um construtor nomeado Aluno.semMatricula que define matricula como 'Não informada'. Exemplo de uso:
// var aluno1 = Aluno('Ana', '20240001');
// var aluno2 = Aluno.semMatricula('Bruno');
 var aluno1 = Aluno('Ana', '20240001');
 print(aluno1);
 var aluno2 = Aluno.semMatricula('Bruno');
 print(aluno2);

// 49. Crie uma classe Produto com as propriedades nome e preco. Use um construtor para inicializar nome como obrigatório e preco com valor padrão 0.0 se não for fornecido.
  var produto1 = Produto("Banana", 45.99);
  var produto2 = Produto("Banana é bom.");

  print("Produto 1: ${produto1.nomedoProduto}, Preço: ${produto1.preco}");
  print("Produto 2: ${produto2.nomedoProduto}, Preço: ${produto2.preco}");

// 50. Crie uma classe Veiculo com as propriedades marca e velocidadeMaxima. Em seguida, crie uma subclasse Carro que adiciona a propriedade quantidadePortas. Exemplo de uso: // var carro = Carro('Toyota', 200, 4); // print(carro.quantidadePortas); // 4 
  var carro = Carro('Toyota', 300, 4);
  print(carro.marca);
  print(carro.velocidadeMaxima);
  print(carro.quantidadePortas);
}

class Veiculo {
  String marca;
  int velocidadeMaxima;

  Veiculo(this.marca, this.velocidadeMaxima);
}

class Carro extends Veiculo {
  int quantidadePortas;

  Carro(String marca, int velocidadeMaxima, this.quantidadePortas) : super(marca, velocidadeMaxima);
}


class Produto {
  String nomedoProduto;
  double preco;

  Produto(this.nomedoProduto, [this.preco = 0.0]);
}

class Aluno {
  String nome;
  String matricula;

  Aluno(this.nome, this.matricula);

 Aluno.semMatricula(this.nome): this.matricula = 'Não informada';

  @override
  String toString() {
    return 'Aluno: $nome, Matrícula: $matricula';
  }
}


class Contador1 {
  int _valor = 0;

  void incrementar() {
    _valor++;
  }
  void resetar(){
    _valor = 0;
  }
  int get valor => _valor;
}

class Node extends LinkedListEntry<Node> {
    final int numero10;
    Node(this.numero10);
  }

class Livro {
  String titulo;
  String autor;
  int anoPublicacao;
  Livro(this.titulo, this.autor, this.anoPublicacao);

  String exibirDetalhes() {
    return 'Livro: $titulo, Autor: $autor, Ano de Pulbicacao: $anoPublicacao';
  }
}