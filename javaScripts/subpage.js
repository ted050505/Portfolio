const toggleBtn_about_project_lab = document.querySelector('.navbar__toggleBtn_about_project_lab');
const menu = document.querySelector('.navbar__menu');
const wrapper = document.querySelector('#wrapper');

toggleBtn_about_project_lab.addEventListener('click', () => {
    menu.classList.toggle('active');
    wrapper.classList.toggle('active');
}) 
