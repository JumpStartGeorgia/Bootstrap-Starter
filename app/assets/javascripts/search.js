
$(document).ready(function(){
  $.extend( $.fn.dataTableExt.oStdClasses, {
      "sWrapper": "dataTables_wrapper form-inline"
  });


  $('#users-datatable').dataTable({
    "processing": true,
    "serverSide": true,
    "ajax": $('#users-datatable').data('source'),
    "order": [[4, 'desc']],
    "language": {
     "url": gon.datatable_i18n_url
    },
    "columnDefs": [
      { orderable: false, targets: [-1] }
    ]
  });

});
