// script.js

function mostrarJugador(nombre, equipo, puntos) {
    const infoDiv = document.getElementById('info');
    infoDiv.innerHTML = `<strong>${nombre}</strong> juega en <strong>${equipo}</strong> y promedia <strong>${puntos}</strong> puntos por partido.`;
}
