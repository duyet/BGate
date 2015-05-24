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
        "processing": true,
        "bLengthChange": false,
        "serverSide": true,
        "iDisplayLength": 2,
        //"bFilter": true,
        "order": [[1,"asc"]],
        "ajax": basePath + "/publisher/domainlist",
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
         { bSortable: false, 'aTargets': [ 0,2,3,5 ] },    
        ],
        "columns": [
            { "data": "index", className: "text-center" },
            { "data": "DomainName" },
            { "data": "AdZones" },
            { "data": "IABCategory" },
            { "data": "created_at" },
            { "data": "ApprovalFlag" }
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
