var DomainTable = {
  init: function(table){
   
    if (table.length > 0) {
      this.table = table;
      this.source_path = table.data("url");
      this.init_datatable();
      this.fix_layout();
      // this.table.fnSetColumnVis(1, false);
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
        "aoColumnDefs": 
        [
         { 
          bSortable: false, 'aTargets': [ 0,2,3,4,7 ] 
         },    
        ],
        "columns": [
            { "data": "index", className: "text-center" },
            { 
              "data": "DomainName", 
              render: function(data) {
                var dt = self.table.fnGetData();
                var is_admin = dt[0].is_admin;
                // deleteDomainModal(<?php echo $domain_id;?>,'<?php echo $domain_list_raw[$row_number]["WebDomain"];?>')
                var  detail_url= "<a href='"+ basePath  + "/publisher/zone/" + data.id + "'>"+ data.name + " (" + data.id + ")"  +"</a>"; 
                var edit_url= "<a href='"+ basePath  + "/publisher/editdomain/" + data.id + "'><span class='glyphicon glyphicon-pencil'></span></a>";
                var delete_url= '<a href="javascript:;" onclick="deleteDomainModal('+data.id+ ', \'' + data.name +'\' )"><span class="glyphicon glyphicon-trash"></span>' + '</a>';
                var create_ad_zone = '';
                if (!is_admin)
                  create_ad_zone = "<a href='"+ basePath  + "/publisher/zone/" + data.id + "/create'> "+ '<span class="glyphicon glyphicon-plus"></span> Adz'  +"</a>"; 
                return detail_url + "<hr class='mrg5T mrg5B'/><div class='row-action'>" + edit_url + "&nbsp;" + delete_url + "&nbsp;" + create_ad_zone + "</div>";
              } 
            },
            { "data": "DomainMarkup" },
            { "data": "AdZones" },
            // { "data": "DomainOwnerID" },
            { "data": "IABCategory" },
            { "data": "created_at" },
            { "data": "updated_at" },
            { "data": "ApprovalFlag",
              render: function(data){
                var dt = self.table.fnGetData();
                var is_admin = dt[0].is_admin;
                if (is_admin)
                  if (data.flag=="Auto-Approved" || data.flag=="Running")
                    return "<p class='text-center' id='domain-flag-" + data.id + "'>" + data.flag + "</p><hr class='mrg5T mrg5B'/><div class='row-action text-center'><a id='domain-flag-action"+ data.id +"' href='javascript:;' onclick='changeDomainFlag(2, "+ data.id +")'>STOP</a></div>";
                  else
                    return "<p class='text-center' id='domain-flag-" + data.id + "'>" + data.flag + "</p><hr class='mrg5T mrg5B'/><div class='row-action text-center'><a id='domain-flag-action"+ data.id +"' href='javascript:;' onclick='changeDomainFlag(3, "+ data.id +")'>RESUME</a></div>";
                else
                  return "<p class='text-center'>" + data.flag + "</p>";
              }
            }
        ],
        initComplete: function () {
          var dt = self.table.fnGetData();
          var is_admin = dt[0].is_admin;
          if (!is_admin)
            self.table.fnSetColumnVis(2, false);
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
                var edit_url= "<a href='"+ basePath  + "/publisher/zone/"+data.domain_id+"/edit/" + data.id + "'><span class='glyphicon glyphicon-pencil'></span></a>&nbsp;";
                var delete_url= '<a href="javascript:;" onclick="deleteZoneModal('+ data.domain_id +','+data.id+ ', \'' + data.name +'\' )"><span class="glyphicon glyphicon-trash"></span>' + '</a>';
                var copy_code_url = '<a href="javascript:;" onclick="InvocationShow('+ data.domain_id +','+data.id+ ')"><span class="glyphicon glyphicon-copy"></span>' + '</a>';
          
                return detail_url + "<hr class='mrg5T mrg5B'/><div class='row-action'>" + edit_url + " " + delete_url + "  " + copy_code_url + "</div>";
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


var CampaignTable = {
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
            d.approval = $("#campaign-status option:selected").val();
          }
        },
        "aoColumnDefs": [
         { bSortable: false, 'aTargets': [ 0,2,3,4,7,8,9,10,11 ] },    
        ],
        "columns": [
            { "data": "index", className: "text-center" },
            { 
              "data": "Name",
              "width": "20%", 
              render: function(data) {
                var dt = self.table.fnGetData();
                var is_admin = dt[0].is_admin;
                // deleteDomainModal(<?php echo $domain_id;?>,'<?php echo $domain_list_raw[$row_number]["WebDomain"];?>')
                var  detail_url= "<a href='"+ basePath  + "/demand/campaign/" + data.id + "/"+ data.preview_query +"'>"+ data.name + " (" + data.id + ")"  +"</a>"; 
                var edit_url= "<a href='"+ basePath  + "/demand/editcampaign/" + data.id + "/"+ data.preview_query +"'><span class='glyphicon glyphicon-pencil'></span></a>";
                var delete_url= '<a href="javascript:;" onclick="deleteCampaignModal('+data.id+ ', \'' + data.name +'\' )"><span class="glyphicon glyphicon-trash"></span>' + '</a>';
                var create_banner = '';
                if (!is_admin)
                  create_banner = "<a href='"+ basePath  + "/demand/createbanner/" + data.id + "/"+ data.preview_query +"'> "+ '<span class="glyphicon glyphicon-plus"></span> Banner'  +"</a>"; 
                return detail_url + "<hr class='mrg5T mrg5B'/><div class='row-action'>" + edit_url + "&nbsp;" + delete_url + "&nbsp;" + create_banner + "</div>";
              } 
            },
            { "data": "CampaignMarkup" },
            { "data": "UserName" },
            { "data": "Status" },
            { "data": "StartDate" },
            { "data": "EndDate" },
            { "data": "ImpressionsCounter", width: "5%" },
            { "data": "MaxImpressions", width: "5%" },
            { "data": "CurrentSpend", width: "5%" },
            { "data": "MaxSpend", width: "5%" },
            { 
              "data": "Action",
              render: function(data){
                return "<div class='row-action text-center'><a id='campaign-flag-action"+ data.campaign_id +"' href='javascript:;' onclick='changeCampaignFlag(" + data.do_action_id + ", "+ data.campaign_id +")'>"+ data.do_action +"</a></div>";
              }
            }
        ],
        initComplete: function () {
          var dt = self.table.fnGetData();
          var is_admin = dt[0].is_admin;
          if (!is_admin){
            self.table.fnSetColumnVis(2, false); 
            self.table.fnSetColumnVis(11, false);
          }   
        },
        fnDrawCallback: function(data){
          return data;
        }
    });
  }
}

var CampaignAdTable = {
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
        // "serverSide": true,
        "iDisplayLength": 10,
        // "scrollX": true,
        "dom": '<"row" <"col-sm-8 custom-filter"> <"col-sm-4" f> >r<"datatable-wrapper" t> <"row mrg20B" <"col-sm-6" il> <"col-sm-6"p> >',
        "order": [[1,"asc"]],
        "autoWidth": false,
        "ajax": {
          url: self.source_path,
          data: function(d){
            d.approval = $("#campaign-status option:selected").val();
          }
        },
        "aoColumnDefs": [
         { bSortable: false, 'aTargets': [ 0,2 ] },    
        ],
        "columns": [
            { "data": "id", className: "text-center" },
            { 
              "data": "name", 
              width: "25%",
              render: function(data) {
                // deleteBannerModal('/demand/deletebanner/2?ispreview=true','abc');
                // deleteDomainModal(<?php echo $domain_id;?>,'<?php echo $domain_list_raw[$row_number]["WebDomain"];?>')
                var  detail_url= "<a href='"+ basePath  + "/demand/showbanner/"+data.id+"'>"+ data.name + " (" + "Details" + ")"  +"</a>"; 
                var edit_url= "<a href='"+ basePath  + "/demand/editbanner/" + data.id + "/"+ data.preview_query +"'><span class='glyphicon glyphicon-pencil'></span></a>";
                var delete_url= '<a href="javascript:;" onclick="deleteBannerModal(\'/demand/deletebanner/'+data.id+ data.preview_query +'\', \'' + data.name +'\' )"><span class="glyphicon glyphicon-trash"></span>' + '</a>';
                return detail_url + "<hr class='mrg5T mrg5B'/><div class='row-action'>" + edit_url + " " + delete_url +"</div>";
              } 
            },
            { "data": "size" },
            { 
              "data": "date", 
              width: "15%",
              className: "text-center",
              render: function(data){
                return data.start + "<hr class='mrg5T mrg5B'/><div class='row-action'>" + data.end ;
              } 
            },
            { "data": "bid_amount", width: "12%", className: "text-right", "asSorting": [ "desc" ,"asc" ] },
            { "data": "bid_counter", width: "12%", "asSorting": [ "desc" ,"asc" ] },
            { "data": "impression_counter", width: "12%", "asSorting": [ "desc" ,"asc" ] },
            { "data": "current_spend", width: "12%", className: "text-right", "asSorting": [ "desc" ,"asc" ] },

        ],
        initComplete: function () {
          
        },
        fnDrawCallback: function(data){
          return data;
        }
    });
  }
}
var PublishersTable = {
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
    console.log(dt_filter_area);
    $(".table-filter").appendTo(dt_filter_area);
  },
  init_datatable: function(){
    var self = this;
    this.table.dataTable({
        "processing": true,
        "bLengthChange": false,
        // "serverSide": true,
        "iDisplayLength": 10,
        // "scrollX": true,
        "dom": '<"row" <"col-sm-8 custom-filter"> <"col-sm-4" f> >r<"datatable-wrapper" t> <"row mrg20B" <"col-sm-6" il> <"col-sm-6"p> >',
        "order": [[1,"asc"]],
        "autoWidth": false,
        "ajax": {
          url: self.source_path,
          data: function(d){
            d.approval = $("#publishers-status option:selected").val();
          }
        },
        "aoColumnDefs": [
         { bSortable: false, 'aTargets': [ 0,2 ] },    
        ],
        "columns": [
            { "data": "PublisherInfoID", className: "text-center" },
            { 
              "data": "Name", 
            },
            { "data": "user.user_login" },
            { 
              "data": "Email", 
            },
            { "data": "DateCreated" },
            { "data": "Domain",
              render: function ( data, type, row ) {
                console.log('render', data,type,  row);
                if( row.approval == true || row.approval== 'true'){
                  return '<a target="_blank" href="'+basePath+'/websites/list/'+row.PublisherInfoID+'" style="color:#0088cc;">View</a>';
                }else{
                  return row.Domain;
                }
              }
            },
            { "data": "Name" ,
              render : function(data, type, row){
                if(row.approval==true || row.approval== 'true'                             ){
                  return '<span class="label label-success">Approved</span>'
                  +'&nbsp;|&nbsp;'
                 +'<a href="javascript:void(0);" onclick="userBanModal('+row.PublisherInfoID+','+"'"+row.Name+"'"+');">Ban</a>';
                }else{
                  return '<a href="javascript:void(0);" onclick="userAcceptModal('+row.PublisherInfoID+','+"'"+row.Name+"'"+');">Approve</a>'
                 +'&nbsp;|&nbsp;'
                 +'<a href="javascript:void(0);" onclick="userRejectionModal('+row.PublisherInfoID+','+"'"+row.Name+"'"+');">Reject</a>';
                }
              }
            },
        ],
        initComplete: function () {
        },
        fnDrawCallback: function(data){
          console.log(data.json);
          return data;
        }
    });
  }
}

var AdvertiserTable = {
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
    console.log(dt_filter_area);
    $(".table-filter").appendTo(dt_filter_area);
  },
  init_datatable: function(){
    var self = this;
    this.table.dataTable({
        "processing": true,
        "bLengthChange": false,
        // "serverSide": true,
        "iDisplayLength": 10,
        // "scrollX": true,
        "dom": '<"row" <"col-sm-8 custom-filter"> <"col-sm-4" f> >r<"datatable-wrapper" t> <"row mrg20B" <"col-sm-6" il> <"col-sm-6"p> >',
        "order": [[1,"asc"]],
        "autoWidth": false,
        "ajax": {
          url: self.source_path,
          data: function(d){
            d.approval = $("#publishers-status option:selected").val();
          }
        },
        "aoColumnDefs": [
         { bSortable: false, 'aTargets': [ 0,2 ] },    
        ],
        "columns": [
            { "data": "DemandCustomerInfoID", className: "text-center" },
            { 
              "data": "Name", 
            },
            { "data": "user.user_login" },
            { 
              "data": "Email", 
            },
            
            { "data": "Website",
              // render: function ( data, type, row ) {
              //   console.log('render', data,type,  row);
              //   if( row.approval == true || row.approval== 'true'){
              //     return '<a target="_blank" href="'+basePath+'/websites/list/'+row.PublisherInfoID+'" style="color:#0088cc;">View</a>';
              //   }else{
              //     return row.Domain;
              //   }
              // }
            },
            { "data": "DateCreated" },
            { "data": "Name" ,
              render : function(data, type, row){
                if(row.approval==true || row.approval== 'true'                             ){
                  return '<span class="label label-success">Approved</span>'
                  +'&nbsp;|&nbsp;'
                  +'<a href="javascript:void(0);" onclick="userBanModal('+row.DemandCustomerInfoID+','+"'"+row.Name+"'"+');">Ban</a>';
                }else{
                  return '<a href="javascript:void(0);" onclick="userAcceptModal('+row.DemandCustomerInfoID+','+"'"+row.Name+"'"+');">Approve</a>'
                 +'&nbsp;|&nbsp;'
                 +'<a href="javascript:void(0);" onclick="userRejectionModal('+row.DemandCustomerInfoID+','+"'"+row.Name+"'"+');">Reject</a>'
                }
              }
            },
        ],
        initComplete: function () {
        },
        fnDrawCallback: function(data){
          console.log(data.json);
          return data;
        }
    });
  }
}

var IncomeTable = {
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
            d.flag = $("#income-time option:selected").val();
          }
        },
        "aoColumnDefs": [
         { bSortable: false, 'aTargets': [ 0,4,5 ] },    
        ],
        "columns": [
            { "data": "index", className: "text-center" },
            { "data": "Time" },
            { "data": "Domain" },
            { "data": "AdName" },
            { "data": "ClickCount" },
            { "data": "ImpCount" },
            { "data": "Incomes" },
        ],
        initComplete: function () {
 
        },
        fnDrawCallback: function(data){
          return data;
        }
    });
  }
}

var OutcomeTable = {
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
            d.flag = $("#income-time option:selected").val();
          }
        },
        "aoColumnDefs": [
         { bSortable: false, 'aTargets': [ 0,4,5 ] },    
        ],
        "columns": [
            { "data": "index", className: "text-center" },
            { "data": "Time" },
            { "data": "CampaignName" },
            { "data": "BannerName" },
            { "data": "ClickCount" },
            { "data": "ImpCount" },
            { "data": "Outcomes" },
        ],
        initComplete: function () {
 
        },
        fnDrawCallback: function(data){
          return data;
        }
    });
  }
}

var ReportPublisherTable = {
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
            d.timefilter = $("#time-filter option:selected").val();
          }
        },
        "aoColumnDefs": 
        [
         { 
          bSortable: false, 'aTargets': [ 0] 
         },    
        ],
        "columns": [
            { "data": "index", className: "text-center" },
            { "data": "AdDomain" },
            { "data": "AdName" },
            { "data": "ClickCount" },
            { "data": "ImpCount" },
            { "data": "Incomes" },
            { "data": "created_at" }
        ],
        initComplete: function () {
 
        },
        fnDrawCallback: function(data){
          $("#Income").text(data.json.Incomes);
          $("#ClickTotal").text(data.json.ClickTotal);
          $("#ImpTotal").text(data.json.ImpTotal);
          return data;
        }
    });
  }
}



var ReportDemandTable = {
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
            d.timefilter = $("#time-filter option:selected").val();
          }
        },
        "aoColumnDefs": 
        [
         { 
          bSortable: false, 'aTargets': [ 0] 
         },    
        ],
        "columns": [
            { "data": "index", className: "text-center" },
            { "data": "CampaignName" },
            { "data": "BannerName" },
            { "data": "ClickCount" },
            { "data": "ImpCount" },
            { "data": "Outcomes" },
            { "data": "created_at" }
        ],
        initComplete: function () {
 
        },
        fnDrawCallback: function(data){
          $("#Outcomes").text(data.json.Outcomes);
          $("#ClickTotal").text(data.json.ClickTotal);
          $("#ImpTotal").text(data.json.ImpTotal);
          return data;
        }
    });
  }
}

var UserPayoutTable = {
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
            // d.approval = $("#campaign-status option:selected").val();
          }
        },
        "aoColumnDefs": [
         { bSortable: false, 'aTargets': [ 0,2,3 ] },    
        ],
        "columns": [
            { "data": "index", className: "text-center" },
            { "data": "created_at", "width": "20%" },
            { "data": "Name" },
            { "data": "Amount" },
            { "data": "Status",
              render: function(data){
                var dt = self.table.fnGetData();
                var is_admin = dt[0].is_admin;
                if (is_admin)
                  if (data.flag=="Processing")
                    return "<p class='text-center' id='payout-flag-" + data.id + "'>" + data.flag + "</p><hr class='mrg5T mrg5B'/><div class='row-action text-center'><a id='payout-flag-action"+ data.id +"' href='javascript:;' onclick='changePayoutFlag(1, "+ data.id +")'>TRANSFER COMPLETED</a></div>";
                  else
                    return "<p class='text-center'>" + data.flag + "</p>";
                else
                  return "<p class='text-center'>" + data.flag + "</p>";
              }

            }
        ],
        initComplete: function () {  
        },
        fnDrawCallback: function(data){
          return data;
        }
    });
  }
}
var PaymentTable = {
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
    console.log(dt_filter_area);
    $(".table-filter").appendTo(dt_filter_area);
  },
  init_datatable: function(){
    var self = this;
    this.table.dataTable({
        "processing": true,
        "bLengthChange": false,
        "bFilter": false,
        "serverSide": true,
        "iDisplayLength": 10,
        // "scrollX": true,
        "dom": '<"row" <"col-sm-8 custom-filter"> <"col-sm-4" f> >r<"datatable-wrapper" t> <"row mrg20B" <"col-sm-6" il> <"col-sm-6"p> >',
        "order": [[5,"desc"]],
        "autoWidth": false,
        "ajax": {
          url: self.source_path,
          data: function(d){
            d.timeFilter = $("#time-filter option:selected").val();
          }
        },
        "aoColumnDefs": [
         { bSortable: false, 'aTargets': [ 1 ] },    
        ],
        "columns": [
            { "data": "id", className: "text-center" },
            { 
              "data": "TransactionLogID",
              render: function ( data, type, row ) {
                console.log('render', data,type,  row);
                if( parseInt(row.log.Type) == 0){
                  return '<span class="label label-success">Paypal</span>';
                }else{
                  return '<span class="label label-primary">Onepay</span>';
                }
              }
            },
            { 
              "data": "Type", 
              render: function ( data, type, row ) {
                console.log('render', data,type,  row);
                if( parseInt(row.Type) == 0){
                  return '<span class="label label-success">Income</span>';
                }else{
                  return '<span class="label label-primary">Outcome</span>';
                }
              }
            },
            { "data": "Amount" ,
              render: function ( data, type, row ) {
                return '$'+data;
              }
            },
            { "data": "Description",
            },
            { "data": "DateCreated" ,
            },
        ],
        initComplete: function () {
        },
        fnDrawCallback: function(data){
          //console.log(data.json);
          return data;
        }
    });
  }
}

$(function(){
  DomainTable.init($("#domain-table"));
  AdzoneTable.init($("#ssp-ad-zone-table"));
  CampaignTable.init($("#campaign-table"));
  CampaignAdTable.init($("#campaign-ad-table"));
  PublishersTable.init($("#publishers-table"));
  AdvertiserTable.init($("#advertiser-table"));
  IncomeTable.init($("#income-table"));
  OutcomeTable.init($("#outcome-table"));
  ReportPublisherTable.init($("#report-publisher-table"));
  ReportDemandTable.init($("#report-demand-table"));
  UserPayoutTable.init($("#user-payout-table"));
  PaymentTable.init($("#payment-table"));
});
