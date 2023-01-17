const navLinks = document.querySelectorAll('nav a');

navLinks.forEach((link) => {
  link.addEventListener('mouseenter', () => {
    link.style.backgroundColor = '#333';
    link.style.color = '#fff';
  });
  link.addEventListener('mouseleave', () => {
    link.style.backgroundColor = '#ccc';
    link.style.color = '#333';
  });
});
