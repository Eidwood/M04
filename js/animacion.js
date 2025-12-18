document.addEventListener('DOMContentLoaded', function() {
    const botones = document.querySelectorAll('.header-controls a, .consulta-reserva');
    botones.forEach(boton => {
        boton.classList.add('zoom-boton');
    });
});
