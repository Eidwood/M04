document.addEventListener('DOMContentLoaded', function() {
    const formulario = document.getElementById('contactoForm');
    const mensajeConfirmacion = document.getElementById('mensajeConfirmacion');

    formulario.addEventListener('submit', function(event) {
        event.preventDefault();

        mensajeConfirmacion.innerText = '✅ Gracias por contactar con TuCocheYa. Hemos recibido tu consulta.';
        mensajeConfirmacion.style.display = 'block';

        formulario.reset();
    });
});