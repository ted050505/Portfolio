const toggleBtn = document.querySelector('.navbar__toogleBtn');
const menu = document.querySelector('.navbar__menu');
const canvas = document.querySelector('#webgl-canvas');
const main_theme = document.querySelector('.main_theme');
// const icons = document.querySelector('.navbar__icons');

toggleBtn.addEventListener('click', () => {
    menu.classList.toggle('active');
    canvas.classList.toggle('active');
    main_theme.classList.toggle('active');
}) 
