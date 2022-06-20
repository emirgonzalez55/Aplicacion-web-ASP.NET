const formulario = document.getElementById("form1");

if (formulario != null) {

emailvalido = /\w+@\w+\.+[a-z]{1,3}$/;
stringvalido = /^[A-Z]+$/i;
dnivalido = /^[0-9]+$/i;

formulario.addEventListener("submit", (e) => {

    nombre = document.getElementById("nombreform").value
    apellido = document.getElementById("apellidoform").value
    email = document.getElementById("emailform").value
    dni = document.getElementById("dniform").value
    turno = document.getElementById("turnoform").value

    if (nombre == "" || apellido == "" || email == "" || dni == "") {
        e.preventDefault();
        alert("Complete todos los campos")
    } else if (!stringvalido.test(nombre)) {
        e.preventDefault();
        alert("El nombre no es valido")
    } else if (!stringvalido.test(apellido)) {
        e.preventDefault();
        alert("El apellido no es valido")
    } else if (!emailvalido.test(email)) {
        e.preventDefault();
        alert("El email no es valido")
    } else if (!dnivalido.test(dni)) {
        e.preventDefault();
        alert("El dni no es valido")
    } else if (turno == ""){
        e.preventDefault();
        alert("Seleccione un turno")
    }

});
}
const formulariocomentario = document.getElementById("form2");


if (formulariocomentario != null) { 
formulariocomentario.addEventListener("submit", (e) => {

    comentario = document.getElementById("comentarioform").value


    if (comentario == "" ) {
        e.preventDefault();
        alert("El campo comentario esta vacio")
    }

});
}
