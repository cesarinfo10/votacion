

$(document).ready(function(){
  regiones();
  candidatos();
});
function validar() {

let checked = $(".CheckedSelect:checked").length; 
let  selccionado = checked;

 const correo = $("#email").val();
 const regex = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

 let numLetra = /^([a-zA-Z])+([0-9])+$/;
 let alias = $("#alias").val();

  if ($("#nombre").val() == '' || $("#nombre").val() == null) {
      Swal.fire(
          'A ocurrido un error!',
          'No se puedo insertar datos, El campo Nombre esta vacio',
          'error'
      );
      $("#nombre").val('');
      return false;
   }else if (alias == '' || alias == null) {
      Swal.fire(
          'A ocurrido un error!',
          'No se puedo insertar datos, El campo Alias esta vacio',
          'error'
      );
      $("#alias").val('');
      return false;

    }else if (alias.length < 5) {
        Swal.fire(
            'A ocurrido un error!',
            'El Alias Debe ser igual o superior a 5 caracteres',
            'error'
        );
        return false;

    }else if (!numLetra.test(alias)) {
      Swal.fire(
        'A ocurrido un error!',
        'Formato incorrecto utilice números y letras',
        'error'
      )
      return false;
   }else if ($("#rut").val() == '' || $("#rut").val() == null) {
        Swal.fire(
            'A ocurrido un error!',
            'No se puedo insertar datos, El campo RUT esta vacio',
            'error'
        );
        $("#rut").val('');
        return false;
    
    }else if ($("#email").val() == '' || $("#email").val() == null) {
        Swal.fire(
            'A ocurrido un error!',
            'No se puedo insertar datos, El campo Email esta vacio',
            'error'
        );
        $("#email").val('');
        return false;

    }else if (!regex.test(correo)) {
        Swal.fire(
          'A ocurrido un error!',
          'Formato de correo incorrecto',
          'error'
        )
        return false;
    }else if($("#region").val() == '0'){
        Swal.fire(
          'A ocurrido un error!',
          'No se puedo insertar datos, No ha seleccionado una region',
          'error'
        );
        return false;

      }else if($("#comuna").val() == '0'){
        Swal.fire(
          'A ocurrido un error!',
          'No se puedo insertar datos, No ha seleccionado una comuna',
          'error'
        );
           return false;

      }else if($("#candidato").val() == '0'){
        Swal.fire(
          'A ocurrido un error!',
          'No se puedo insertar datos, No ha seleccionado un candidato',
          'error'
        );
           return false;
      }else if(selccionado < 2){
        Swal.fire(
          'A ocurrido un error!',
          'No se puedo insertar datos, debe seleccionar dos o más opciones',
          'error'
        );
           return false;
      }else{
        guardar();
      }
}

function validaRUT(){
    const valida = Fn.validaRut($("#rut").val().trim()) ? '1' : '2';
    if (valida == '2'){
      Swal.fire(
        'A ocurrido un error!',
        'RUT incorrecto o campo vacío',
        'error'
      )
      $("#rut").val('');
    }
  }

function regiones(){
  $.ajax({
    type: "GET",
    url: "/desis/services/servicio.php?getAllRegion",
    data:"",
    success:function(data){
     // console.log(data);
     $("#selectRegion").html(data);
     
  }})
}

function llenarComuna(){
  let idRegion = $("#region").val();
  $.ajax({
    type: "GET",
    url: "/desis/services/servicio.php?consultaComunas&idRegion="+idRegion,
    data:"",
    success:function(data){
     // console.log(data);
     $("#selectComuna").html(data);
     
  }})
}

function candidatos(){
  $.ajax({
    type: "GET",
    url: "/desis/services/servicio.php?getAllCandidatos",
    data:"",
    success:function(data){
     // console.log(data);
     $("#selectCandidatos").html(data);
     
  }})
}
  function guardar(){
    let webs= 0;
    let tvs= 0;
    let rs =0;
    let am = 0;

    if ($('#web').prop('checked') ){
       webs= 1;
    }

    if ($('#tv').prop('checked') ){
         tvs= 1;
    }

     if ($('#rs').prop('checked') ){
        rs= 1;
    }

    if ($('#am').prop('checked') ){
        am= 1;
    }

  let nombre = $("#nombre").val();
  let alias = $("#alias").val();
  let rut = $("#rut").val();
  let email = $("#email").val();
  let region = $("#region").val();
  let comuna= $("#comuna").val();
  let id_candidato = $("#candidato").val();
  let web = webs;  
  let tv = tvs;
  let redes_soc = rs;
  let amigo = am;


  let dataString = 'nombre='+nombre.trim()+'&alias='+alias.trim()+'&rut='+rut.trim()+'&email='+email.trim()
                    +'&region='+region.trim()+'&comuna='+comuna.trim()+'&id_candidato='+id_candidato.trim()
                    +'&web='+web+'&tv='+tv+'&redes_soc='+redes_soc+'&amigo='+amigo;


$.ajax({
            type: "POST",
            url: "/desis/services/servicio.php?insertarVotacion",
            data: dataString,
            success: function(data) {
              console.log(data);
              if (data == 1){ 
                Swal.fire(
                  'Operación exitosa!',
                  'Los datos se guardaron correctamente'
              );
                //limpiarCampos();
              }else if(data == 3){
                Swal.fire(
                  'A ocurrido un error!',
                  'Usted ya ha votado',
                  'error'
                );
                }else{   
                Swal.fire(
                  'A ocurrido un error!',
                  'No se puedo ingresar la vatación',
                  'error'
                );
               // limpiarCampos();
                }
               
            }

        });
}