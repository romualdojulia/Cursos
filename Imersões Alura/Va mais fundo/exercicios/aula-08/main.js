var carta1 = {
  nome: 'Jake Peralta',
  imagem:
    'https://metropolitanafm.com.br/wp-content/uploads/2019/11/f9276a745710fe2a6187420aea8cce9c-e1573470592110-405x245.jpg',
  atributos: {
    ataque: 8,
    defesa: 7,
    humor: 10
  }
}

var carta2 = {
  nome: 'Rosa Diaz',
  imagem:
    'https://br.jetss.com/wp-content/uploads/2021/06/best-rosa-diaz-gifs-from-brooklyn-nine-nine.jpg',
  atributos: {
    ataque: 8,
    defesa: 10,
    humor: 2
  }
}

var carta3 = {
  nome: 'Capitão Holt',
  imagem:
    'https://i.pinimg.com/474x/be/d5/66/bed5662d5b2abe1e63ebfa25f11e42b8.jpg',
  atributos: {
    ataque: 9,
    defesa: 9,
    humor: 7
  }
}

var carta4 = {
  nome: 'Charles Boyle',
  imagem:
    'https://imagoi.com/wp-content/uploads/2020/05/brooklyn-nine-nine-detetive-charles-boyle-imagoi.jpg',
  atributos: {
    ataque: 6,
    defesa: 5,
    humor: 7
  }
}

var carta5 = {
  nome: 'Amy Santiago',
  imagem:
    'https://64.media.tumblr.com/1183e71d0086cc11de23e84005fcb6d0/23398239627fff3f-a5/s400x600/d14c37081e7beb279270c698b587f19ce2fef361.png',
  atributos: {
    ataque: 8,
    defesa: 8,
    humor: 6
  }
}

var cartas = [carta1, carta2, carta3, carta4, carta5]
var cartaMaquina
var cartaJogador

function sortearCarta() {
  var numeroCartaMaquina = parseInt(Math.random() * 5)
  cartaMaquina = cartas[numeroCartaMaquina]

  var numeroCartaJogador = parseInt(Math.random() * 5)
  while (numeroCartaMaquina == numeroCartaJogador) {
    var numeroCartaJogador = parseInt(Math.random() * 5)
  }
  cartaJogador = cartas[numeroCartaJogador]
  console.log(cartaJogador)

  document.getElementById('btnSortear').disabled = true
  document.getElementById('btnJogar').disabled = false
  exibirCartaJogador()
}

function obtemAtributoSelecionado() {
  var radioAtributos = document.getElementsByName('atributo')

  for (var i = 0; i < radioAtributos.length; i++) {
    if (radioAtributos[i].checked == true) {
      return radioAtributos[i].value
    }
  }
}

function jogar() {
  var atributoSelecionado = obtemAtributoSelecionado()
  var divResultado = document.getElementById('resultado')
  var elementoResultado = document.getElementById('resultado')

  if (
    cartaJogador.atributos[atributoSelecionado] >
    cartaMaquina.atributos[atributoSelecionado]
  ) {
    htmlResultado = "<p class='resultado-final'>Venceu</p>"
  } else if (
    cartaJogador.atributos[atributoSelecionado] <
    cartaMaquina.atributos[atributoSelecionado]
  ) {
    htmlResultado = "<p class='resultado-final'>Perdeu</p>"
  } else {
    htmlResultado = "<p class='resultado-final'>Empatou</p>"
  }
  divResultado.innerHTML = htmlResultado

  document.getElementById('btnJogar').disabled = true
  exibirCartaMaquina()
}

function exibirCartaJogador() {
  var divCartaJogador = document.getElementById('carta-jogador')
  divCartaJogador.style.backgroundImage = `url(${cartaJogador.imagem})`
  // divCartaJogador.style.backgroundImage = "url(" + cartaJogador.imagem + ")";
  var moldura =
    '<img src="https://www.alura.com.br/assets/img/imersoes/dev-2021/card-super-trunfo-transparent.png" style=" width: inherit; height: inherit; position: absolute;">'
  var tagHTML = "<div id='opcoes' class='carta-status'>"

  var opcoesTexto = ''
  for (var atributo in cartaJogador.atributos) {
    opcoesTexto +=
      "<input type='radio' name='atributo' value='" +
      atributo +
      "'>" +
      atributo +
      ' ' +
      cartaJogador.atributos[atributo] +
      '<br>'
  }
  var nome = `<p class="carta-subtitle">${cartaJogador.nome}</p>`

  divCartaJogador.innerHTML = moldura + nome + tagHTML + opcoesTexto + '</div>'
}

function exibirCartaMaquina() {
  var divCartaMaquina = document.getElementById('carta-maquina')
  divCartaMaquina.style.backgroundImage = `url(${cartaMaquina.imagem})`

  var moldura =
    '<img src="https://www.alura.com.br/assets/img/imersoes/dev-2021/card-super-trunfo-transparent.png" style=" width: inherit; height: inherit; position: absolute;">'
  var tagHTML = "<div id='opcoes' class='carta-status'>"

  var opcoesTexto = ''
  for (var atributo in cartaMaquina.atributos) {
    opcoesTexto +=
      "<p type='text' name='atributo' value='" +
      atributo +
      "'>" +
      atributo +
      ' ' +
      cartaMaquina.atributos[atributo] +
      '</p>'
  }
  var nome = `<p class="carta-subtitle">${cartaMaquina.nome}</p>`

  divCartaMaquina.innerHTML = moldura + nome + tagHTML + opcoesTexto + '</div>'
}
