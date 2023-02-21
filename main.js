const toggleBtn = document.querySelector('.navbar__toggleBtn');
const toggleBtn_cancel = document.querySelector('.navbar__toggleBtn__cancel');
const menu = document.querySelector('.navbar__menu');
const canvas = document.querySelector('#webgl-canvas');
const main_theme = document.querySelector('.main_theme');

toggleBtn.addEventListener('click', () => {
    menu.classList.toggle('active');
    canvas.classList.toggle('active');
    main_theme.classList.toggle('active');
    // toggleBtn_cancel.classList.toggle('active');
    // toggleBtn.classList.toggle('active');
}) 

// toggleBtn_cancel.addEventListener('click', () => {
//     toggleBtn.classList.toggle('active');
//     toggleBtn_cancel.classList.toggle('active');
// })
