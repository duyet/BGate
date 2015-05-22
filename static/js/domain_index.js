var DomainTable = {
  init: function(table){
   
    if (table.length > 0) {
      this.table = table;
      this.source_path = table.data("url");
      this.init_datatable();
      // this.fix_layout();
    }
  },
  init_datatable: function(){
    var self = this;
    this.table.dataTable({
        "bProcessing": false,
        "bLengthChange": true,
        "bServerSide": true,
        "bFilter": true,
        "order": [[1,"asc"]],
        "ajax": "/",
        // "sAjaxSource": self.source_path,
        // "fnServerData": function( sSource, aoData, fnCallback, oSettings ) {
        //   // var params = aoData.concat(self.collect_filter_data());
        //   oSettings.jqXHR = $.ajax( {
        //     "dataType": 'json',
        //     "type": "GET",
        //     "url": sSource,
        //     "data": aoData,
        //     "success": fnCallback
        //   } );
        // },
        "aoColumnDefs": [
          { bSortable: false, 'aTargets': [ 0,5 ] },
          { className: "text-center", "targets": [ 0 ] }
       ],

        initComplete: function () {
          
        },
        fnDrawCallback: function(){
          return [];
        }
    });
  }

}

$(function(){
  DomainTable.init($("#domain-table"));
});
