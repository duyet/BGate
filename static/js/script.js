// Validate empty fields
function emptystr(a)
{
	return a.match(/\S+(?:\s+\S+)*/);
}

// Validate email
function validateEmail(email)
{
	var reg = /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
	if (reg.test(email))
	{
		return true;
	}
	else {
		return false;
	}
}

function getValidDomain(domain)
{
	var re_weburl = new RegExp(
  "^" +
    // protocol identifier
    "(?:(?:https?|ftp)://)" +
    // user:pass authentication
    "(?:\\S+(?::\\S*)?@)?" +
    "(?:" +
      // IP address exclusion
      // private & local networks
      "(?!(?:10|127)(?:\\.\\d{1,3}){3})" +
      "(?!(?:169\\.254|192\\.168)(?:\\.\\d{1,3}){2})" +
      "(?!172\\.(?:1[6-9]|2\\d|3[0-1])(?:\\.\\d{1,3}){2})" +
      // IP address dotted notation octets
      // excludes loopback network 0.0.0.0
      // excludes reserved space >= 224.0.0.0
      // excludes network & broacast addresses
      // (first & last IP address of each class)
      "(?:[1-9]\\d?|1\\d\\d|2[01]\\d|22[0-3])" +
      "(?:\\.(?:1?\\d{1,2}|2[0-4]\\d|25[0-5])){2}" +
      "(?:\\.(?:[1-9]\\d?|1\\d\\d|2[0-4]\\d|25[0-4]))" +
    "|" +
      // host name
      "(?:(?:[a-z\\u00a1-\\uffff0-9]-*)*[a-z\\u00a1-\\uffff0-9]+)" +
      // domain name
      "(?:\\.(?:[a-z\\u00a1-\\uffff0-9]-*)*[a-z\\u00a1-\\uffff0-9]+)*" +
      // TLD identifier
      "(?:\\.(?:[a-z\\u00a1-\\uffff]{2,}))" +
    ")" +
    // port number
    "(?::\\d{2,5})?" +
    // resource path
    "(?:/\\S*)?" +
  "$", "i"
);
    var reg = /^((?:(?:(?:\w[\.\-\+]?)*)\w)+)((?:(?:(?:\w[\.\-\+]?){0,62})\w)+)\.(\w{2,6})$/;
	if (re_weburl.test(domain))
	{
		return true;
	}
	else {
		return false;
	}
}

// Validate space in username
function validateUser(username) {

	var nameRegex = /^[a-zA-Z\-]+$/;
    return username.match(nameRegex);

}

// VAST Invocation code  (Publisher/website/zone)
function VastInvocationShow ( domain_id, ad_id ) {

	$('#adtagvast').html("");
	$('#adtagvast').css("display","none");
	$('#adtag_progress_bar_vast').css("display","block");
	
	$('#InvocationCodeModalVast').modal('show');
	
	$.post("/publisher/zone/" + domain_id + "/generatevasttag", { ad_id: ad_id }, function( data ) {
		$('#adtag_progress_bar_vast').css("display","none");
		$('#adtagvast').html(data.data.tag);
		$('#adtagvast').css("display","block");
	},'json');

}

// Invocation code  (Publisher/website/zone)
function InvocationShow ( domain_id, ad_id ) {

	$('#adtag').html("");
	$('#adtag').css("display","none");
	$('#adtag_progress_bar').css("display","block");
	
	$('#InvocationCodeModal').modal('show');
	
	$.post(basePath + "/publisher/zone/" + domain_id + "/generatetag", { ad_id: ad_id }, function( data ) {
		$('#adtag_progress_bar').css("display","none");
		$('#adtag').html(data.data.tag);
		$('#adtag').css("display","block");
	},'json');

}

// Zone delete modal popup
function deleteZoneModal( domain_id, ad_id, ad_name ) {
	$('#modal_domain_id').val(domain_id);
	$('#modal_zone_id').val(ad_id);
	$("#zone_alert_msg").css("display","none");
	
	var msg = 'Are you sure you wish to delete the ad zone "' + ad_name + '" (ID: ' + ad_id + ')?';
	
	$("#DeleteZoneModal #msg").html(msg);
	$('#DeleteZoneModal').modal('show');
}

// Zone delete true action
function deleteZoneConfirm() {
	
	var domain_id = $('#modal_domain_id').val();
	var ad_id = $('#modal_zone_id').val();
	//var ad_id = 65;
	$("#zone_alert_msg").css("display","none");
	$("#zone_yes_btn").button('loading');
	$("#zone_no_btn").attr("disabled",true);
	
	$.post("/publisher/zone/" + domain_id + "/delete/" + ad_id, { del: 'Yes', param1: domain_id, id: ad_id }, function( data ) {
		$("#zone_no_btn").attr("disabled",false);
		if(data.success == false) {
			$("#zone_yes_btn").button('reset');
			$("#zone_alert_msg").html(data.data.error_msg);
			$("#zone_alert_msg").css("display","block");
			return false;
		}
		if(data.success == true) {
			//alert(data.success+" "+data.data.error_msg);	
			window.location.reload();
		}
	},'json');

}

// Webiste delete modal popup
function deleteDomainModal( domain_id, domain_name ) {
	
	$('#modal_domain_id').val(domain_id);
	$("#domain_alert_msg").css("display","none");
	var msg = 'Are you sure you wish to delete the domain "' + domain_name + '" (ID: ' + domain_id + ')?';
	$("#DeleteDomainModal #msg").html(msg);
	$('#DeleteDomainModal').modal('show');

}

function agreeMSAReject() {
	
	document.location.href = '/auth/logout';
}

function agreeMSAConfirm() {
	
	$("#msa_alert_msg").css("display","none");
	$("#msa_yes_btn").button('loading');
	$("#msa_no_btn").attr("disabled",true);
	
	$(".msa-form").submit();

}

// Website delete true action
function deleteDomainConfirm() {
	
	var domain_id = $('#modal_domain_id').val();
	//var domain_id = 65;
	$("#domain_alert_msg").css("display","none");
	$("#domain_yes_btn").button('loading');
	$("#domain_no_btn").attr("disabled",true);
	
	$.post(basePath + "/publisher/deletedomain/" + domain_id, { del: 'Yes', param1: domain_id }, function( data ) {
		
		$("#domain_no_btn").attr("disabled",false);
		if(data.success == false) {
			$("#domain_yes_btn").button('reset');
			$("#domain_alert_msg").html(data.data.error_msg);
			$("#domain_alert_msg").css("display","block");
			return false;
		}
		if(data.success == true) {
			//alert(data.success+" "+data.data.error_msg);	
			window.location.reload();
		}
	},'json');

}

// Change domain flag

function changeDomainFlag(flag, id){
	$.post(basePath + "/publisher/changedomainflag/" + id, {param1: id, flag: flag }, function( data ) {
		
		if(data.success == false) {

			return false;
		}
		if(data.success == true) {
			
			window.location.reload();
		}
	},'json');	
}

//Change campaign flag
function changeCampaignFlag(flag, id){
	$.post(basePath + "/demand/changecampaignflag/" + id, {param1: id, flag: flag }, function( data ) {
		
		if(data.success == false) {

			return false;
		}
		if(data.success == true) {
			
			window.location.reload();
		}
	},'json');	
}
// Campaign delete modal popup
function deleteCampaignModal( campaign_id, campaign_name ) {
	
	$('#modal_campaign_id').val(campaign_id);
	$("#campaign_alert_msg").css("display","none");
	var msg = 'Are you sure you wish to delete the campaign "' + campaign_name + '" ?';
	$("#DeleteCampaignModal #msg").html(msg);
	$('#DeleteCampaignModal').modal('show');

}

// Campaign delete true action
function deleteCampaignConfirm() {
	var campaign_id = $('#modal_campaign_id').val();
	//var campaign_id = 65;
	$("#campaign_alert_msg").css("display","none");
	$("#campaign_yes_btn").button('loading');
	$("#campaign_no_btn").attr("disabled",true);
	
	$.post(basePath + "/demand/deletecampaignpreview/" + campaign_id, { del: 'Yes', param1: campaign_id }, function( data ) {
		
		$("#domain_no_btn").attr("disabled",false);
		if(data.success == false) {
			$("#domain_yes_btn").button('reset');
			$("#domain_alert_msg").html(data.data.error_msg);
			$("#domain_alert_msg").css("display","block");
			return false;
		}
		if(data.success == true) {
			//alert(data.success+" "+data.data.error_msg);	
			window.location.reload();
		}
	},'json');	
}


// Banner delete modal popup
function deleteBannerModal( banner_id, banner_name ) {
	
	$('#modal_banner_id').val(banner_id);
	$("#banner_alert_msg").css("display","none");
	var msg = 'Are you sure you wish to delete the banner "' + banner_name + '" ?';
	$("#DeleteBannerModal #msg").html(msg);
	$('#DeleteBannerModal').modal('show');

}

// Banner delete true action
function deleteBannerConfirm() {
	
	var banner_id = $('#modal_banner_id').val();
	//var banner_id = 65;
	$("#banner_alert_msg").css("display","none");
	$("#banner_yes_btn").button('loading');
	$("#banner_no_btn").attr("disabled",true);
	
	$.post(banner_id, function( data ) {
		
		$("#banner_no_btn").attr("disabled",false);
		if(data.success == false) {
			$("#banner_yes_btn").button('reset');
			$("#banner_alert_msg").html(data.data.error_msg);
			$("#banner_alert_msg").css("display","block");
			return false;
		}
		if(data.success == true) {
			reloadDemandWindow(data);
		}
	},'json');
}

// Exclusive Inclusion delete modal popup
function deleteExclusiveInclusionModal( exclusive_inclusion_id, exclusive_inclusion_name ) {
	
	$('#modal_exclusive_inclusion_id').val(exclusive_inclusion_id);
	$("#exclusive_inclusion_alert_msg").css("display","none");
	var msg = 'Are you sure you wish to delete "' + exclusive_inclusion_name + '" ?';
	$("#DeleteExclusiveInclusionModal #msg").html(msg);
	$('#DeleteExclusiveInclusionModal').modal('show');

}

// Exclusive Inclusion delete true action
function deleteExclusiveInclusionConfirm() {
	
	var exclusive_inclusion_id = $('#modal_exclusive_inclusion_id').val();
	//var exclusive_inclusion_id = 65;
	$("#exclusive_inclusion_alert_msg").css("display","none");
	$("#exclusive_inclusion_yes_btn").button('loading');
	$("#exclusive_inclusion_no_btn").attr("disabled",true);
	
	$.post(exclusive_inclusion_id, function( data ) {
		
		$("#exclusive_inclusion_no_btn").attr("disabled",false);
		if(data.success == false) {
			$("#exclusive_inclusion_yes_btn").button('reset');
			$("#exclusive_inclusion_alert_msg").html(data.data.error_msg);
			$("#exclusive_inclusion_alert_msg").css("display","block");
			return false;
		}
		if(data.success == true) {
			reloadDemandWindow(data);
		}
	},'json');
}


// Domain Exclusion delete modal popup
function deleteDomainExclusionModal( domain_exclusion_id, domain_exclusion_name ) {
	
	$('#modal_domain_exclusion_id').val(domain_exclusion_id);
	$("#domain_exclusion_alert_msg").css("display","none");
	var msg = 'Are you sure you wish to delete "' + domain_exclusion_name + '" ?';
	$("#DeleteDomainExclusionModal #msg").html(msg);
	$('#DeleteDomainExclusionModal').modal('show');

}

// Domain Exclusion delete true action
function deleteDomainExclusionConfirm() {
	
	var domain_exclusion_id = $('#modal_domain_exclusion_id').val();
	//var domain_exclusion_id = 65;
	$("#domain_exclusion_alert_msg").css("display","none");
	$("#domain_exclusion_yes_btn").button('loading');
	$("#domain_exclusion_no_btn").attr("disabled",true);
	
	$.post(domain_exclusion_id, function( data ) {
		
		$("#domain_exclusion_no_btn").attr("disabled",false);
		if(data.success == false) {
			$("#domain_exclusion_yes_btn").button('reset');
			$("#domain_exclusion_alert_msg").html(data.data.error_msg);
			$("#domain_exclusion_alert_msg").css("display","block");
			return false;
		}
		if(data.success == true) {
			reloadDemandWindow(data);
		}
	},'json');
}



// Delivery Filter delete modal popup
function deleteDeliveryFilterModal( delivery_filter_id, delivery_filter_name ) {
	
	$('#modal_delivery_filter_id').val(delivery_filter_id);
	$("#delivery_filter_alert_msg").css("display","none");
	var msg = 'Are you sure you wish to delete delivery filter of "' + delivery_filter_name + '" ?';
	$("#DeleteDeliveryFilterModal #msg").html(msg);
	$('#DeleteDeliveryFilterModal').modal('show');

}

// Delivery Filter delete true action
function deleteDeliveryFilterConfirm() {
	
	var delivery_filter_id = $('#modal_delivery_filter_id').val();
	//var delivery_filter_id = 65;
	$("#delivery_filter_alert_msg").css("display","none");
	$("#delivery_filter_yes_btn").button('loading');
	$("#delivery_filter_no_btn").attr("disabled",true);
	
	$.post(delivery_filter_id, function( data ) {
		
		$("#delivery_filter_no_btn").attr("disabled",false);
		if(data.success == false) {
			$("#delivery_filter_yes_btn").button('reset');
			$("#delivery_filter_alert_msg").html(data.data.error_msg);
			$("#delivery_filter_alert_msg").css("display","block");
			return false;
		}
		if(data.success == true) {
			reloadDemandWindow(data);
		}
	},'json');
}

function reloadDemandWindow(data) {
	
	var loc = document.location.href;
	if (loc.indexOf("ispreview") == -1) {
		// is currently not in preview mode, however the user made preview changes
		if (data && data.location && data.previewid) {
			window.location = data.location + data.previewid + '?ispreview=true'
		} else {
			window.location = '/demand/'
		}
	} else {
		window.location.reload();
	}
	
}

//Get template sizes on change
function getTemplateSizes(a) {
	if(a.value=="") {
		$("#Width").val("");
		$("#Height").val("");
		return false;
	}
	var id = a.id;
	var text = $("#"+id+" :selected").text();
	var arr = text.split("(");
	var arr1 = arr[1].split(")");
	var arr2 = arr1[0].split("x");
	$("#Width").val($.trim(arr2[0]));
	$("#Height").val($.trim(arr2[1]));
}

$.validator.addMethod("validateemail", function(value) {
		if (value == 'admin@localhost'){
			return true;
		} else {
			return validateEmail(value);
		}
}, 'Please enter a valid email address.');

$.validator.addMethod("validatedomain", function(value) {
		return getValidDomain(value);
}, 'Please enter a valid domain.');

// $.validator.addMethod("validateIABSize", function(value) {
// 		var IAB_height = $('#IAB-height').val();
// 		var IAB_width = $('#IAB-width').val();
// 		var img_element = 
// 		var t = new Image();
//     	t.src = (img_element.getAttribute ? img_element.getAttribute("src") : false) || img_element.src;
//     // return t.width;
// 		if(!empty(IAB_height) && !empty(IAB_width)){

// 		}
// 		return getValidDomain(value);
// }, 'This image has size not same IABSize.');




$.validator.addMethod("validatewebsite", function(value) {
		return getValidDomain(value);
}, 'Please enter a valid website name.');

$.validator.addMethod("validatefile", function(value) {
		var invalid = $('input[name="adUrl"]').attr('invalid');
		var value = $('input[name="adUrl"]').attr('value');
		var val = $('input[name="adUrl"]').val();
		if((value.length > 0 || val.length > 0) && invalid.length === 0){
		   	return true;
		}else{
		   	return false;
		}
	    // if(!(invalid == 'invalid')){
	   	// 	return true;
	    // }else{
	    // 	return false;
	    // }
		return getValidDomain(value);
}, 'This file field is required.');

$.validator.addMethod("validateuser", function(value) {
		return validateUser(value);
}, 'Only characters A-Z, a-z acceptable.');

$().ready(function() {

	  // Campaign form validation
	  var validator = $("#campaignform").bind("invalid-form.validate", function() {
			$("#cdn_form_msg").html("Required fields are missing.");
		}).validate({
		rules: {
			campaignname: {
				required: true
			},
			customername: {
               required: false
           },
			customerid: {
				required: false,
				number: true
			},
			maximpressions: {
				required: true,
				number: true
			},
			maxspend: {
				required: true,
				number: true
			}
		},
		errorContainer: $("#cdn_form_msg"),
		errorClass: 'cdn_form_error',
		highlight: function(element, errorClass, validClass) {
			$(element).parent().addClass("error");
		},
		unhighlight: function(element, errorClass, validClass) {
			$(element).parent().removeClass("error");
		}
	});
	
	// Banner form validation
	var validator = $("#bannerform").bind("invalid-form.validate", function() {
			$("#cdn_form_msg").html("Required fields are missing.");
		}).validate({
		rules: {
			bannername: {
				required: true
			},
			label: {
				required: true
			},
			adUrl: {
				// required: {
    //                depends:function(){
    //                    var value = $('input[name="adUrl"]').attr('value');
				// 	   var val = $('input[name="adUrl"]').val();					   
				// 	   if(value.length > 0 || val.length > 0){
				// 	   	return false;
				// 	   }else{
				// 	   	return true;
				// 	   }                       
    //                }   
    //            },
    			required: false,
               validatefile : true

			},
			altText: {
				required: true
			},
			startdate: {
				required: true
			},
			enddate: {
				required: true
			},
			iABAudienceCategory: {
				required: true
			},
			gEOCountry: {
				required: true
			},
			timeZone: {
				required: true
			},
			adtag: {
               required: true
           },
           landingPageTLD: {  
               required:  {
                   depends:function(){
                       $(this).val($.trim($(this).val()));
                       return true;
                   }   
               },
               validatedomain: true
           },
			height: {
				required:  {
	                depends:function(){
	                    return $("#ImpressionType").val() != 'video';
	                }   
	            },
				number: true
			},
			width: {
				required:  {
	                depends:function(){
	                    return $("#ImpressionType").val() != 'video';
	                }   
	            },
				number: true
			},
			bidamount: {
				required: true,
				number: true
			},
			iabsize: {
				required:  {
	                depends:function(){
	                    return $("#ImpressionType").val() != 'video';
	                }   
	            },
			},
			targetdaily: {
				required: true,
				number: true
			},
			targetmax: {
				required: true,
				number: true
			},
			dailybudget: {
				required: true,
				number: true
			},
			maximumbudget: {
				required: true,
				number: true
			},
			freCapTimeToHr:{
				required: {
	                depends:function(){
	                    return $("input[name=frequencyCap]").is(':checked');
	                }   
	            },
				min: {
			        // min needs a parameter passed to it
			        param: function () {
			        	var freCapTimeFromHr = ($("input[name=freCapTimeFromHr]").val());
			        	if(!empty(freCapTimeFromHr)){
			        		return parseInt(freCapTimeFromHr);
			        	}else{
			        		return 0;
			        	}
			        },
			      }
			}

			
		},
		errorContainer: $("#cdn_form_msg"),
		errorClass: 'cdn_form_error',
		highlight: function(element, errorClass, validClass) {
			$(element).parent().addClass("error");
		},
		unhighlight: function(element, errorClass, validClass) {
			$(element).parent().removeClass("error");
		},
		messages: {
			bidamount: {
				number: "Please enter a valid bid." 
			}
		}
	});
	
	// Domian Exclusion form validation
	var validator = $("#domainexclusionform").bind("invalid-form.validate", function() {
			$("#cdn_form_msg").html("Required fields are missing.");
		}).validate({
		rules: {
           domainname: {  
               required:  {
                   depends:function(){
                       $(this).val($.trim($(this).val()));
                       return true;
                   }   
               },
               validatedomain: true
           }
		},
		errorContainer: $("#cdn_form_msg"),
		errorClass: 'cdn_form_error',
		highlight: function(element, errorClass, validClass) {
			$(element).parent().addClass("error");
		},
		unhighlight: function(element, errorClass, validClass) {
			$(element).parent().removeClass("error");
		}
	});
	
	
	// Exclusive inclusion form validation
	var validator = $("#exclusiveinclusionform").bind("invalid-form.validate", function() {
			$("#cdn_form_msg").html("Required fields are missing.");
		}).validate({
		rules: {
           domainname: {  
               required:  {
                   depends:function(){
                       $(this).val($.trim($(this).val()));
                       return true;
                   }   
               },
               validatedomain: true
           }
		},
		errorContainer: $("#cdn_form_msg"),
		errorClass: 'cdn_form_error',
		highlight: function(element, errorClass, validClass) {
			$(element).parent().addClass("error");
		},
		unhighlight: function(element, errorClass, validClass) {
			$(element).parent().removeClass("error");
		}
	});
	
	// Domain form validation
	var validator = $("#domain").bind("invalid-form.validate", function() {
			$("#cdn_form_msg").html("Required fields are missing.");
			// if(document.getElementById("cdn_form_success")) $("#cdn_form_success").css("display","none");

		}).validate({
		rules: {
           	WebDomain: {  
               required: true,
               validatedomain: true
           	},
           	Description: {
				required: true
			},
			DomainMarkup: {
				required: true
			}
		},
		errorContainer: $("#cdn_form_msg"),
		errorClass: 'cdn_form_error',
		highlight: function(element, errorClass, validClass) {
			$(element).parent().addClass("error");
		},
		unhighlight: function(element, errorClass, validClass) {
			$(element).parent().removeClass("error");
		}
	});
	

	// Campaign form validation
	var validator = $("#campaign").bind("invalid-form.validate", function() {
			$("#cdn_form_msg").html("Required fields are missing.");
			if(document.getElementById("cdn_form_success")) $("#cdn_form_success").css("display","none");

		}).validate({
		rules: {
           campaignname: {  
               required:  true
           },
           startdate: {  
               required:  true
           },
           enddate: {  
               required:  true
           },
           maximpressions: {
           		required:  true
           },
           maxspend: {
           		required:  true
           }
		},
		errorContainer: $("#cdn_form_msg"),
		errorClass: 'cdn_form_error',
		highlight: function(element, errorClass, validClass) {
			$(element).parent().addClass("error");
		},
		unhighlight: function(element, errorClass, validClass) {
			$(element).parent().removeClass("error");
		}
	});

	// Zone form validation
	var validator = $("#ad").bind("invalid-form.validate", function() {
			$("#cdn_form_msg").html("Required fields are missing.");
			if(document.getElementById("cdn_form_success")) $("#cdn_form_success").css("display","none");

		}).validate({
		rules: {
 			AdName: {
				required: true
			},
			Description: {
               required: true
           },
			PassbackAdTag: {
				required: false
			},
			FloorPrice: {
				required: true,
				number: true
			},
			Width: {
				required:  {
	                depends:function(){
	                    return $("#ImpressionType").val() != 'video';
	                }   
	            },
				number: true
			},
			Height: {
				required:  {
	                depends:function(){
	                    return $("#ImpressionType").val() != 'video';
	                }   
	            },
				number: true
			}
		},
		errorContainer: $("#cdn_form_msg"),
		errorClass: 'cdn_form_error',
		highlight: function(element, errorClass, validClass) {
			$(element).parent().addClass("error");
		},
		unhighlight: function(element, errorClass, validClass) {
			$(element).parent().removeClass("error");
		}
	});
	
	// Publisher Signup form validation
	var validator = $("#signupform").bind("invalid-form.validate", function() {
			$("#cdn_form_msg").html("Required fields are missing.");
			if(document.getElementById("cdn_form_error")) $("#cdn_form_error").css("display","none");
			if(document.getElementById("cdn_form_success")) $("#cdn_form_success").css("display","none");

		}).validate({
		rules: {
 			Name: {
				required: true
			},
			user_login: {
				required:  {
                   depends:function(){
                       $(this).val($.trim($(this).val()));
                       return true;
                   }   
               },
               validateuser: true
			},
			Email: {
               required:  {
                   depends:function(){
                       $(this).val($.trim($(this).val()));
                       return true;
                   }   
               },
               validateemail: true
           },
			Domain: {
				required:  {
                   depends:function(){
                       $(this).val($.trim($(this).val()));
                       return true;
                   }   
               },
               validatedomain: true
			},
			Password: {
				required: true
			},
			Confirm_password: {
				required: true,
				equalTo: "#Password"
			}
		},
		errorContainer: $("#cdn_form_msg"),
		errorClass: 'cdn_form_error',
		highlight: function(element, errorClass, validClass) {
			$(element).parent().addClass("error");
		},
		unhighlight: function(element, errorClass, validClass) {
			$(element).parent().removeClass("error");
		},
		messages: {
			Confirm_password: {
				equalTo: "Please enter the same password as above."
			}
		}
	});
	
	
	// Demand Customer Signup form validation
	var validator = $("#customersignupform").bind("invalid-form.validate", function() {
			$("#cdn_form_msg").html("Required fields are missing.");
			if(document.getElementById("cdn_form_error")) $("#cdn_form_error").css("display","none");
			if(document.getElementById("cdn_form_success")) $("#cdn_form_success").css("display","none");

		}).validate({
		rules: {
 			customer_name: {
				required: true
			},
			user_login: {
				required:  {
                   depends:function(){
                       $(this).val($.trim($(this).val()));
                       return true;
                   }   
               },
               validateuser: true
			},
			email: {
               required:  {
                   depends:function(){
                       $(this).val($.trim($(this).val()));
                       return true;
                   }   
               },
               validateemail: true
           },
			website: {
				required:  {
                   depends:function(){
                       $(this).val($.trim($(this).val()));
                       return true;
                   }   
               },
               validatewebsite: true
			},
			company: {
				required: true
			},
			password: {
				required: true
			},
			confirm_password: {
				required: true,
				equalTo: "#password"
			}
		},
		errorContainer: $("#cdn_form_msg"),
		errorClass: 'cdn_form_error',
		highlight: function(element, errorClass, validClass) {
			$(element).parent().addClass("error");
		},
		unhighlight: function(element, errorClass, validClass) {
			$(element).parent().removeClass("error");
		},
		messages: {
			confirm_password: {
				equalTo: "Please enter the same password as above."
			}
		}
	});
	
	// Login form validation
	var validator = $("#loginform").bind("invalid-form.validate", function() {
			if(document.getElementById("cdn_form_msg")) $("#cdn_form_msg").css("display","none");

		}).validate({
		rules: {
           username: {  
               required:  {
                   depends:function(){
                       $(this).val($.trim($(this).val()));
                       return true;
                   }   
               },
               validateemail: true
           },
           password: {
				required: true
			}
		},
		errorContainer: $("#cdn_form_msg"),
		errorClass: 'cdn_form_error',
		highlight: function(element, errorClass, validClass) {
			$(element).parent().addClass("error");
		},
		unhighlight: function(element, errorClass, validClass) {
			$(element).parent().removeClass("error");
		}
	});
	
	
	// Forgot password form validation
	var validator = $("#revocerform").bind("invalid-form.validate", function() {
			if(document.getElementById("cdn_form_msg")) $("#cdn_form_msg").css("display","none");

		}).validate({
		rules: {
           username: {  
               required:  {
                   depends:function(){
                       $(this).val($.trim($(this).val()));
                       return true;
                   }   
               },
               validateemail: true
           }
		},
		errorContainer: $("#cdn_form_msg"),
		errorClass: 'cdn_form_error',
		highlight: function(element, errorClass, validClass) {
			$(element).parent().addClass("error");
		},
		unhighlight: function(element, errorClass, validClass) {
			$(element).parent().removeClass("error");
		}
	});

	// Profile form validation
	var validator = $("#accountform").bind("invalid-form.validate", function() {
			$("#cdn_form_msg").html("Required fields are missing.");
			if(document.getElementById("cdn_form_success")) $("#cdn_form_success").css("display","none");
		}).validate({
		rules: {
			name: {
				required: true
			},
			description: {
               required: true
           }
		},
		errorContainer: $("#cdn_form_msg"),
		errorClass: 'cdn_form_error',
		highlight: function(element, errorClass, validClass) {
			$(element).parent().addClass("error");
		},
		unhighlight: function(element, errorClass, validClass) {
			$(element).parent().removeClass("error");
		}
	});
	
	
	//prevent copy paste on password fields
	$("#password").bind("copy paste",function(e) {  
         e.preventDefault();  
    });  
    
    $("#confirm_password").bind("copy paste",function(e) {  
         e.preventDefault();  
    });  
	
	
	// Change password form validation
	var validator = $("#changepassform").bind("invalid-form.validate", function() {
			$("#cdn_change_pass").html("Required fields are missing.");
			if(document.getElementById("cdn_form_success1")) $("#cdn_form_success1").css("display","none");
		}).validate({
		rules: {
			old_password: {
				required: true
			},
			password: {
				required: true
			},
			confirm_password: {
				required: true,
				equalTo: "#password"
			}
		},
		errorContainer: $("#cdn_change_pass"),
		errorClass: 'cdn_form_error',
		highlight: function(element, errorClass, validClass) {
			$(element).parent().addClass("error");
		},
		unhighlight: function(element, errorClass, validClass) {
			$(element).parent().removeClass("error");
		},
		messages: {
			confirm_password: {
				equalTo: "Please enter the same password as above."
			}
		}
	});
	
	//publisher websites validation form
	
	// Profile form validation
	var validator = $("#websiteform").bind("invalid-form.validate", function() {
			if(document.getElementById("cdn_form_success")) $("#cdn_form_success").css("display","none");
			if(document.getElementById("cdn_form_error1")) $("#cdn_form_error1").css("display","none");
			if(document.getElementById("cdn_form_error")) $("#cdn_form_error").css("display","none");
			if(document.getElementById("cdn_form_success1")) $("#cdn_form_success1").css("display","none");
			
		}).validate({
		rules: {
			website: {
				required: true
			},
			category: {
               required: true
           }
		},
		errorClass: 'cdn_form_error',
		highlight: function(element, errorClass, validClass) {
			$(element).parent().addClass("error");
		},
		unhighlight: function(element, errorClass, validClass) {
			$(element).parent().removeClass("error");
		}
	});
	// Payment form validation
	var validator = $("#payment-form").bind("invalid-form.validate", function() {
			$("#cdn_form_msg").html("Required fields are missing.");
			if(document.getElementById("cdn_form_success")) $("#cdn_form_success").css("display","none");
		}).validate({
		rules: {
			Amount: {
				required: true,
				number: true
			},
			method: {
               required: true
           }
		},
		errorContainer: $("#cdn_form_msg"),
		errorClass: 'cdn_form_error',
		highlight: function(element, errorClass, validClass) {
			$(element).parent().addClass("error");
		},
		unhighlight: function(element, errorClass, validClass) {
			$(element).parent().removeClass("error");
		}
	});
});

// User rejection modal popup by admin
function userRejectionModal( domain_id, domain_name ) {
	
	var user_type =  $('#user_type').val();
	var user = '';
	if(user_type == 'publisher') {
		user = 'Publisher';
	}
	if(user_type == 'customer') {
		user = 'Customer';
	}
	$('#modal_user_id').val(domain_id);
	$("#user_rejection_alert_msg").css("display","none");
	var msg = '<b>'+user+':</b> ' + domain_name;
	$("#UserRejectionModal #msg").html(msg);
	$('#UserRejectionModal').modal('show');

}

// User rejection confirm by admin
function userRejectionConfirm() {
	
	var user_id = $('#modal_user_id').val();
    var description = emptystr($('#UserRejectionModal #description').val());
    var user_type =  $('#user_type').val();

    if(description == null) {
		$('#UserRejectionModal #description').parent().parent().addClass("error");
		$('#UserRejectionModal #description').focus();
		return false;
	}
	else {
		$('#UserRejectionModal #description').parent().parent().removeClass("error");
	}
	description = description.toString();

	$("#user_rejection_alert_msg").css("display","none");
	$("#user_rejection_yes_btn").button('loading');
	$("#user_rejection_no_btn").attr("disabled",true);

	$.post(basePath+"/users/rejectuser", { q: 1, user_id: user_id, description: description, user_type:user_type }, function( data ) {
		
		$("#user_rejection_no_btn").attr("disabled",false);
		if(data.success == false) {
			$("#user_rejection_yes_btn").button('reset');
			$("#user_rejection_alert_msg").html(data.data.msg);
			$("#user_rejection_alert_msg").css("display","block");
			return false;
		}
		if(data.success == true) {
			$("#user_rejection_yes_btn").button('reset');
			$("#user_rejection_alert_msg").html(data.data.msg);
			$("#user_rejection_alert_msg").css("display","block");
			window.location.reload();
		}
	},'json');

}

// User ban modal popup by admin
function userBanModal( domain_id, domain_name ) {
	
	var user_type =  $('#user_type').val();
	var user = '';
	if(user_type == 'publisher') {
		user = 'Publisher';
	}
	if(user_type == 'customer') {
		user = 'Customer';
	}
	$('#ban_user_id').val(domain_id);
	$("#user_ban_alert_msg").css("display","none");
	var msg = '<b>'+user+':</b> ' + domain_name;
	$("#UserBanModal #msg").html(msg);
	$('#UserBanModal').modal('show');

}

// User rejection confirm by admin
function userBanConfirm() {
	
	var user_id = $('#ban_user_id').val();
    var description = emptystr($('#UserBanModal #description').val());
    var user_type =  $('#user_type').val();

    if(description == null) {
		$('#UserBanModal #description').parent().parent().addClass("error");
		$('#UserBanModal #description').focus();
		return false;
	}
	else {
		$('#UserBanModal #description').parent().parent().removeClass("error");
	}
	description = description.toString();

	$("#user_ban_alert_msg").css("display","none");
	$("#user_ban_yes_btn").button('loading');
	$("#user_ban_no_btn").attr("disabled",true);

	$.post(basePath+"/users/banuser", { q: 1, user_id: user_id, description: description, user_type:user_type }, function( data ) {
		
		$("#user_rejection_no_btn").attr("disabled",false);
		console.log(data);
		if(data.success == false) {
			$("#user_ban_yes_btn").button('reset');
			$("#user_ban_alert_msg").html(data.data.msg);
			$("#user_ban_alert_msg").css("display","block");
			return false;
		}
		if(data.success == true) {
			$("#user_ban_yes_btn").button('reset');
			$("#user_ban_alert_msg").html(data.data.msg);
			$("#user_ban_alert_msg").css("display","block");
			window.location.reload();
		}
	},'json');
	// .done(function(data) {
	//     console.log(data);
	// })
	// .fail(function(data) {
	//     console.log(data);
	// });

}

// User accept modal popup by admin
function userAcceptModal( domain_id, domain_name ) {
	
	var user_type =  $('#user_type').val();
	var user = '';
	if(user_type == 'publisher') {
		user = 'Publisher';
	}
	if(user_type == 'customer') {
		user = 'Customer';
	}
	$('#modal_user_id').val(domain_id);
	$("#user_accept_alert_msg").css("display","none");
	var msg = '<b>'+user+':</b> ' + domain_name;
	$("#UserAcceptModal #msg").html(msg);
	$('#UserAcceptModal').modal('show');

}

// User accept confirm by admin
function userAcceptConfirm() {
	
	var user_id = $('#modal_user_id').val();
	var user_type =  $('#user_type').val();

	$("#user_accept_alert_msg").css("display","none");
	$("#user_accept_yes_btn").button('loading');
	$("#user_accept_no_btn").attr("disabled",true);

	$.post(basePath+"/users/acceptuser", { q: 1, user_id: user_id, user_type:user_type }, function( data ) {

		$("#user_accept_no_btn").attr("disabled",false);
		$("#user_accept_yes_btn").button('reset');
		if(data.success == false) {
			//$("#user_accept_yes_btn").button('reset');
			$("#user_accept_alert_msg").html(data.data.msg);
			$("#user_accept_alert_msg").css("display","block");
			return false;
		}
		if(data.success == true) {
			//$("#user_accept_yes_btn").button('reset');
			$("#user_accept_alert_msg").html(data.data.msg);
			$("#user_accept_alert_msg").css("display","block");
			window.location.reload();
		}
	},'json');

}

// delete publisher website.
function del_website(self, websiteid) {

	$.post("/users/deletewebsite", { q: 1, website_id: websiteid }, function( data ) {

		if(data.success == false) {
			$("#cdn_form_error1").html(data.data.msg);
			$("#cdn_form_error1").css("display","block");
			return false;
		}
		if(data.success == true) {
			$(self).parent().parent().fadeOut();
			$("#cdn_form_success1").html(data.data.msg);
			$("#cdn_form_success1").css("display","block");
		}
	},'json');
	
}


//websites approval modal (admin)
function websites_approve() {
	element = document.getElementsByTagName('input');
	var str = "d";
	var str1 = "";
	var id = "";
	for(var i=0, n=element.length;i<n;i++) {
	  if(element[i].type == "checkbox" && element[i].name == "approve_denied_website" && element[i].checked) {
			str = str+","+element[i].value;
			id = "#wb_site_"+element[i].value;
			str1 = str1+'&nbsp;&nbsp;<span style="font-size:20px;">'+$(id).html()+'</span>';
	  }
	}
	if(str=="d") {
		alert("please select at least 1 website.");
		return false;
	}
	var str7 = 'Websites for apporval.';
	$("#WebsiteApprovalModal #myModalLabel").html(str7);
	$("#website_approval_yes_btn").html("Approve");
	$("#website_approval_alert_msg").css("display","none");
	$("#WebsiteApprovalModal #msg").html(str1);
	$("#web_approvel_denied").val("1");
	$("#web_approvel_denied_ids").val(str);
	$('#WebsiteApprovalModal').modal('show');
	
}


//websites denied modal (admin)
function websites_denied() {
	element = document.getElementsByTagName('input');
	var str = "d";
	var str1 = "";
	var id = "";
	for(var i=0, n=element.length;i<n;i++) {
	  if(element[i].type == "checkbox" && element[i].name == "approve_denied_website"  && element[i].checked) {
			str = str+","+element[i].value;
			id = "#wb_site_"+element[i].value;
			str1 = str1+'&nbsp;&nbsp;<span style="font-size:20px;">'+$(id).html()+'</span>';		
	  }
	}
	if(str=="d") {
		alert("please select at least 1 website.");
		return false;
	}
	var str7 = 'Websites for deny';
	$("#WebsiteApprovalModal #myModalLabel").html(str7);
	$("#website_approval_yes_btn").html("Deny");
	var msg = '<p>'+str1+'</p>';
	msg = msg+'<label for="desc" class="control-label">Reason for Deny :</label><div class="controls"><textarea  id="denied_desciption" name="denied_desciption" style="width: 500px;height:130px;"></textarea>    </div>';
	
	$("#website_approval_alert_msg").css("display","none");
	$("#WebsiteApprovalModal #msg").html(msg);
	$("#web_approvel_denied").val("0");
	$("#web_approvel_denied_ids").val(str);
	$('#WebsiteApprovalModal').modal('show');
}


// websites approval/denied confirm by admin
function web_appr_denie_confirm() {
	
	var q = $("#web_approvel_denied").val();
	var ids = $("#web_approvel_denied_ids").val();
	var id_array = ids.split(",");
	var description = "";
	if(document.getElementById("denied_desciption")) {
	
		description = emptystr(document.getElementById("denied_desciption").value);
	    if(description == null) {
			var class_name = document.getElementById("denied_desciption").parentNode.parentNode.className;
			document.getElementById("denied_desciption").parentNode.parentNode.className = class_name+" error";
			document.getElementById("denied_desciption").focus();
			return false;
		}
		else {
			var class_name = document.getElementById("denied_desciption").parentNode.parentNode.className;
			var class_n = class_name.split(" ");
			document.getElementById("denied_desciption").parentNode.parentNode.className = class_n[0];
		}
		description = description.toString();
	}

	$("#website_approval_alert_msg").css("display","none");
	$("#website_approval_yes_btn").button('loading');
	$("#website_approval_no_btn").attr("disabled",true);
	$.post("/websites/approvedenied", { q: q, website_ids: ids, description:description }, function( data ) {

		$("#website_approval_no_btn").attr("disabled",false);
		$("#website_approval_yes_btn").button('reset');
		if(data.success == false) {
			$("#website_approval_alert_msg").html(data.data.msg);
			$("#website_approval_alert_msg").css("display","block");
			return false;
		}
		if(data.success == true) {
			$("#website_approval_alert_msg").html(data.data.msg);
			$("#website_approval_alert_msg").css("display","block");
			for(key in id_array) {
				if(id_array[key] == "d") {
					continue;
				}
				$("#sites_row_"+id_array[key]).remove();	
			}
			//window.location.reload();
		}
	},'json');
}

function termsWindow(page, width, height) {
	properties = "toolbar=0,status=1,scrollbars=1,resizable=1,width=" + width + ", height=" + height;
	win = window.open( page, "terms", properties);
	win.focus();
	return false;
}

function helpWindow(page, width, height) {
	properties = "toolbar=1,status=1,scrollbars=1,resizable=1,width=" + width + ", height=" + height;
	win = window.open( page, "help center", properties);
	win.focus();
	return false;
}

function viewIncomeList(){
	$("#income-list").toggle("slow");
	if ($("#income-action").text() == 'View all income list')
	 	$("#income-action").text("Hide income list");
	else
		$("#income-action").text("View all income list");
}

function viewOutcomeList(){
	$("#outcome-list").toggle("slow");
	if ($("#outcome-action").text() == 'View all outcome list')
	 	$("#outcome-action").text("Hide outcome list");
	else
		$("#outcome-action").text("View all outcome list");
}

function loadIncomeAdzone(){
	var flag = $("#income-time option:selected").val();
	$.get(basePath + "/manager/getincome/" + flag, {param1: flag}  , function( data ) {
		$("#income-value").text(data.data[0].Incomes);
	},'json');		

}

function loadOutcomeAdzone(){
	var flag = $("#income-time option:selected").val();
	$.get(basePath + "/manager/getoutcome/" + flag, {param1: flag} , function( data ) {
		$("#outcome-value").text(data.data[0].Outcomes);
	},'json');		

}

function empty(object) {
  if((typeof(object) == 'object' && $.isEmptyObject(object)) || 
	    object == '' || 
	    object == null || 
	    object == undefined || 
	    object == 'null' || 
	    object == 'undefined' ||
	    object == NaN ||
	    object == {} ||
	    object == 'NaN'
    ){
    return true;
  }else{
    return false;
  }
}
function  auto_complete_url(name) {
	var $input = $('input[name="'+name+'"]');
	var value = $input.val();
	var http = value.indexOf('http');
	var https = value.indexOf('https');
	if((http == -1 && https == -1)){
		var length = value.length > 3 ? 3 : value.length;
		for (var i = length-1; i >=0 ; i--) {
			if('://'.indexOf(value[i]) != -1){
				value = value.replaceAt(i, 1);
			}
		};
		$input.val('http://'+value);
	}
}
String.prototype.replaceAt = function(index, charcount) {
  return this.substr(0, index) + this.substr(index + charcount);
}

$().ready(function() {
	if($('input').is('input[name="landingPageTLD"]')){
		$('input[name="landingPageTLD"]').change(function () {
			auto_complete_url($(this).attr('name'));
		})
	}
	if($('input').is('input[name="WebDomain"]')){
		$('input[name="WebDomain"]').change(function () {
			auto_complete_url($(this).attr('name'));
		})
	}
	if (window.location.pathname.indexOf("manager/revenue") > -1){
		loadIncomeAdzone();
		loadOutcomeAdzone();
	}

});