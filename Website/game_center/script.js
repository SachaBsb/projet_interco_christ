const marioButton = document.querySelector("#mario-button");
const snakeButton = document.querySelector("#snake-button");

marioButton.addEventListener("click", function() {
  window.location.href = "mario-gh-pages/index.html";
});

snakeButton.addEventListener("click", function() {
  window.location.href = "snake/snake.html";
});
