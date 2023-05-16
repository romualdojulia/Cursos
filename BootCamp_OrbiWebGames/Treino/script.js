const url = "https://www.youtube.com/watch?v=af8fdbaB8JY";
const btn = document.querySelector('#btn');

function sim(url){
  const win = window.open(url, '_blank');
  win.focus()
}

btn.addEventListener('click', () =>{
  sim(url)
})

function desviar(t){
  var btn = t; 
  btn.style.position = 'absolute';
  btn.style.bottom = randomNumber(10,90);
  btn.style.left = randomNumber(10,90);
}

function randomNumber (min, max){
  return (Math.random() * (max-min) + min) +'%'; 
}