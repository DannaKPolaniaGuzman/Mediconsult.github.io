'use strict';
//Se busca dentro del html el elemento cuyo selector de id (#) sea btn-guardar
const boton_guardar = document.querySelector('#btn-guardar');
const txt_usuario = document.querySelector('#txtUser');
const txt_email = document.querySelector('#txtMail');
const txt_asunto = document.querySelector('#txtAsunto');
const txt_mensaje = document.querySelector('#txtMen');

let validar = () => {
    let inputs_requeridos = document.querySelectorAll('#frm-registro [required]');
    let error = false;

    for (let i = 0; i < inputs_requeridos.length; i++) {
        if (inputs_requeridos[i].value == '') {
            inputs_requeridos[i].classList.add('input-error');
            error = true;
        } else {
            inputs_requeridos[i].classList.remove('input-error');
        }
    }
    //Procesos de validación


    return error;
};

let limpiar = () => {
    txt_usuario.value = "";
    txt_email.value = "";
    txt_asunto.value = "";
    txt_mensaje.value = "";
};
//Se crea una función llamada obtener_datos que se ejecuta al darle click al botón
let obtener_datos = () => {
    let error = validar();
    if (error) {
        Swal.fire({
            width: 450,
            toast: true,
            position: 'top-end',
            icon: 'warning',
            title: "No pudo ser Enviado!",
            text: "Tiene que completar todos los datos del formulario",
            showConfirmButton: false,
            timerProgressBar: true,
            timer: 3500
            
          });
    } else {
        console.log(txt_usuario.value);
        console.log(txt_email.value);
        console.log(txt_asunto.value);
        console.log(txt_mensaje.value);
        Swal.fire({
            width: 450,
            toast: true,
            position: 'top-end',
            icon: 'success',
            title: 'Enviado!',
            text: 'Su mensaje fue enviado al administrador de MediConsult',
            showConfirmButton: false,
            timerProgressBar: true,
            timer: 3500
          }).then(() => {
            limpiar();
        });
    }
};

//Se le agrega el evento click al botón de guardar, una vez que se la da click llama a la función validar
boton_guardar.addEventListener('click', obtener_datos);

    
    
