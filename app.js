const text = document.querySelector(".main_symbol");
const strText = text.textContent;

const splitText = strText.split("");

text.textContent = "";

for (let i=0; i<splitText.length; i++) {
    text.innerHTML += "<span>" + splitText[i] + "</span>";
}

let char = 0;
let timer = setInterval(onTick, 50);
let timer2 = setInterval(onTick2, 50);

function onTick() {
    const span = text.querySelectorAll('span')[char];
    span.classList.add('fade');
    char++
    if (char === splitText.length) {
        complete();
        return;
    }
}
function onTick2() {
    const span = text.querySelectorAll('span')[char];
    span.classList.add('fadeOut');
    char++
    if (char === splitText.length) {
        complete();
        return;
    }
}

function complete() {
    clearInterval(timer);
    timer = null;
}