var DomainTable = {
  init: function(table){
   
    if (table.length > 0) {
      this.table = table;
      this.source_path = table.data("url");
      this.init_datatable();
      this.fix_layout();

    }
  },
  reload_table: function(){
    this.table.DataTable().ajax.reload();
  },
  fix_layout: function(){
    var dt_filter_area = $(".custom-filter");
    $(".table-filter").appendTo(dt_filter_area);
  },
  init_datatable: function(){
    var self = this;
    this.table.dataTable({
        "processing": true,
        "bLengthChange": false,
        "serverSide": true,
        "iDisplayLength": 10,
        "scrollX": true,
        "dom": '<"row" <"col-sm-8 custom-filter"> <"col-sm-4" f> >r<"datatable-wrapper" t> <"row mrg20B" <"col-sm-6" il> <"col-sm-6"p> >',
        "order": [[1,"asc"]],
        "autoWidth": false,
        "ajax": {
          url: self.source_path,
          data: function(d){
            d.approval = $("#domain-status option:selected").val();
            d.category = $("#domain-IABCategory option:selected").val();
            // d.created_at = "efg";
          }
        },
        "aoColumnDefs": [
         { bSortable: false, 'aTargets': [ 0,2,3,5 ] },    
        ],
        "columns": [
            { "data": "index", className: "text-center" },
            { 
              "data": "DomainName", 
              render: function(data) {
                // deleteDomainModal(<?php echo $domain_id;?>,'<?php echo $domain_list_raw[$row_number]["WebDomain"];?>')
                var  detail_url= "<a href='"+ basePath  + "/publisher/zone/" + data.id + "'>"+ data.name + " (" + data.id + ")"  +"</a>"; 
                var edit_url= "<a href='"+ basePath  + "/publisher/editdomain/" + data.id + "'>Edit</a>";
                var delete_url= '<a href="javascript:;" onclick="deleteDomainModal('+data.id+ ', \'' + data.name +'\' )">Delete' + '</a>';
                var create_ad_zone = "<a href='"+ basePath  + "/publisher/zone/" + data.id + "/create'> "+ 'Create Ad-Zone'  +"</a>"; 
                return detail_url + "<hr class='mrg5T mrg5B'/><div class='row-action'>" + edit_url + " " + delete_url + " | " + create_ad_zone + "</div>";
              } 
            },
            { "data": "AdZones" },
            { "data": "IABCategory" },
            { "data": "created_at" },
            { "data": "ApprovalFlag" }
        ],
        initComplete: function () {
          
        },
        fnDrawCallback: function(data){
          return data;
        }
    });
  }
}

var AdzoneTable = {
  init: function(table){
   
    if (table.length > 0) {
      this.table = table;
      this.source_path = table.data("url");
      this.init_datatable();
      this.fix_layout();

    }
  },
  reload_table: function(){
    this.table.DataTable().ajax.reload();
  },
  fix_layout: function(){
    var dt_filter_area = $(".custom-filter");
    $(".table-filter").appendTo(dt_filter_area);
  },
  init_datatable: function(){
    var self = this;
    this.table.dataTable({
        "processing": true,
        "bLengthChange": false,
        "serverSide": true,
        "iDisplayLength": 10,
        "dom": '<"row" <"col-sm-8 custom-filter"> <"col-sm-4" f> >r<"datatable-wrapper" t> <"row mrg20B" <"col-sm-6" li> <"col-sm-6"p> >',
        "order": [[1,"asc"]],
        "autoWidth": false,
        "ajax": {
          url: self.source_path,
          data: function(d){
            d.approval = $("#adzone-status option:selected").val();
            d.adtemplate = $("#adzone-template option:selected").val();
          }
        },
        "aoColumnDefs": [
         { bSortable: false, 'aTargets': [ 0,2,3 ] },    
        ],
        "columns": [
            { "data": "index", className: "text-center" },
            { 
              "data": "AdzoneName", 
              render: function(data) {
                var detail_url= "<a href='"+ basePath  + "/publisher/zone/" + data.domain_id + "/show/"+data.id+"'>"+ data.name + " (" + data.id + ")"  +"</a>"; 
                // var detail_url= data.name + " (" + data.id + ")"; 
                var edit_url= "<a href='"+ basePath  + "/publisher/zone/"+data.domain_id+"/edit/" + data.id + "'>Edit</a>";
                var delete_url= '<a href="javascript:;" onclick="deleteZoneModal('+ data.domain_id +','+data.id+ ', \'' + data.name +'\' )">Delete' + '</a>';
          
                return detail_url + "<hr class='mrg5T mrg5B'/><div class='row-action'>" + edit_url + " " + delete_url + "</div>";
              } 
            },
            { "data": "AdStatus" },
            { 
              "data": "SpaceSize" ,
              render: function(data){
                return data.name + " (" + data.width + "x" + data.height +")"; 
              }
            },
            { "data": "FloorPrice", class: "text-right" },
            { "data": "TotalRequests" },
            { "data": "TotalImpressionsFilled" },
            { "data": "TotalAmount", class: "text-right" },
            { "data": "DateCreated" }
        ],
        initComplete: function () {
          
        },
        fnDrawCallback: function(data){
          return data;
        }
    });
  }
}

$(function(){
  DomainTable.init($("#domain-table"));
  AdzoneTable.init($("#ssp-ad-zone-table"));
});
