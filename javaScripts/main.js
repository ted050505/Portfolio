const toggleBtn = document.querySelector('.navbar__toggleBtn');
const toggleBtn_about = document.querySelector('.navbar__toggleBtn_about');
// const toggleBtn_cancel = document.querySelector('.navbar__toggleBtn__cancel');
const menu = document.querySelector('.navbar__menu');
const canvas = document.querySelector('#webgl-canvas');
const wrapper = document.querySelector('#wrapper');
const main_theme = document.querySelector('.main_theme');

toggleBtn.addEventListener('click', () => {
    menu.classList.toggle('active');
    canvas.classList.toggle('active');
    main_theme.classList.toggle('active');
}) 

toggleBtn_about.addEventListener('click', () => {
    menu.classList.toggle('active');
    wrapper.classList.toggle('active');
}) 
