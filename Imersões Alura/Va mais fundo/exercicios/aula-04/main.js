var listaFilmes = [
  'https://dox9s3cfvvyi4.cloudfront.net/articles/40db7bc92927fbceff5fb75bbd3ec733.jpg',
  'https://deveserisso.com.br/blog/wp-content/uploads/2020/01/sherlock.jpg',
  'https://segredosdomundo.r7.com/wp-content/uploads/2020/08/friends-curiosidades-sobre-uma-das-maiores-series-de-todos-os-tempos.jpg'
]

for (var i = 0; i < listaFilmes.length; i++) {
  document.write('<img src= ' + listaFilmes[i] + '>')
}
