/**
 * 
 */
 $(document).ready(function () {
    // Esto no lo modifiquen----------------------------------------------------
    let dataTable = $('#datatable').DataTable({
        "sDom": '<"H"lr>t<"F"ip>',
        "ordering": false,
        "language": {
            "lengthMenu": "Mostrar _MENU_ registros",
            "zeroRecords": "No se encontrarón resultados.",
            "info": "Registros del _START_ al _END_ de _TOTAL_ registros.",
            "infoEmpty": "Registros del 0 al 0 de 0 registros.",
            "infoFiltered": "(Filtrando de _MAX_ registros)",
            "sSearch": "Buscar:",
            "oPaginate": {
                "sFirst": "Primero",
                "sLast": "Último",
                "sNext": ">",
                "sPrevious": "<"
            },
            "sProcessing": "Procesando...",
        }
    });
    $("#datatable-search").keyup(function () {
        dataTable.search($(this).val()).draw();
    });
    // ---------------------------------------------------------------------------
    let array = 
    ["#campo6",
    "#campo7",
    "#campo8",
    "#campo9",
    "#campo0"];
    // Cuando llamo al boton de modificar estoy llamando a una clase data,
    // tienen que cambiarlo a lo que necesiten
    $('.data').click(function () {
        let datosTabla = [];
        $(this).parents('tr').find('td').each(function () {
            datosTabla.push($(this).html());
        });
        // Este console.log es para que miren los datos que obtiene datosTabla
        console.log(datosTabla);
        $(array[0]).val(datosTabla[0]);
        $(array[1]).val(datosTabla[1]);
        $(array[2]).val(datosTabla[2]);
        $(array[3]).val(datosTabla[3]);
        $(array[4]).val(datosTabla[4]);
    })
})
// El valor que recibe la funcion es el id
function deleteLoQueNecesiten(id) {
    Swal.fire({
        title: '¿Estas seguro?',
        text: "¡No podras revertir este cambio!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#60A6A6',
        cancelButtonColor: '#f93154',
        confirmButtonText: 'Confirmar'
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                url: 'http://localhost:8082/api/usuarios/eliminar/' + id
            })
            Swal.fire(
                '¡Eliminado!',
                'El usuario se ha eliminado.',
                'success'
            )/*.then(() => {
                location.href = "http://localhost:8080/VargasFront/Servlet"
            })*/
        }
    })
}