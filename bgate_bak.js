/**
 * Tracking and display ads for BGate system.
 * 
 * Date: 19/05/2015
 * Author: ISLab
 */

var adserverDomain = 'localhost';
var delivery_path = '/delivery/impress';

if (typeof ISLab_AdsiFrame_Opts === "undefined") {
	var ISLab_AdsiFrame_Opts = null;
}

if (typeof ISLab_placement_id === "undefined") {
	var ISLab_placement_id = null;
}

var qualityScoringPixels = [];
var cookieMatchingPixels = [];
function initPixelTracking(url) {
	(new Image()).src = url;
}

function fireCookieMatchingPixels() {
	for (i in cookieMatchingPixels) {
		initPixelTracking(cookieMatchingPixels[i]);
	}
}

function fireQSPixels() {
	for (i in qualityScoringPixels) {
		initPixelTracking(qualityScoringPixels[i]);
	}
}

var script_name = 'bgate.js';
var InitLvDuitIFrame = (function() {
	
  function isInIframe() {
	  return self !== top;
  }
  
  function getScriptTag() {
	  if('currentScript' in document) {
		  return document.currentScript;
	  }
	  
	  var scripts = document.getElementsByTagName('script');
	  var last_script = scripts[scripts.length-1];
	  var rg = new RegExp(script_name, 'i');
	  if(last_script.src.search(rg) >= 0) {
		  return last_script;
	  } else {
		  try{
			  for(var n = scripts.length-1; n >= 0; n--) { 
				  if(scripts[n].src.search(rg) >= 0) {
					  return scripts[n];
				  }
			  }
		  }catch(e) {
			  
		  }
	  }
	  return last_script;
  }
  
  function getQueryString() {

    var myScript = getScriptTag();
    var rg = new RegExp(script_name, 'i');
    if(myScript.src.search(rg) >= 0) {
    	return myScript.src.replace(/^[^\?]+\??/,'');
    }

    return false;
  }
  
  function getQueryStringArg(qs, key, default_) {
    default_ = default_||'';
    var query_obj = {};
   
    qs.replace( new RegExp("([^?=&]+)(=([^&]*))?","g"), function($0,$1,$2,$3) { query_obj[$1] = $3; } );
    
    if(typeof(query_obj[key]) === 'undefined' || query_obj[key] === null) {
    	return default_;
    } else {
    	return query_obj[key];
    }
  }
  
  function getSiteURL() {
    var site_loc='';
    
    try {
    	if(isInIframe() && document.referrer) {
    		site_loc = document.referrer.replace(/^\s+|\s+$/g,'');
    	} else {
    		site_loc = document.location.href;
    	}
    } catch(e) {
    	
    }
    return site_loc.replace(/["']/g,'');
  }
  
  function getRefSiteURL() {
    var ref='';
    if(!isInIframe()) {
    	ref=document.referrer.replace(/^\s+|\s+$|["']/g,'');
    }
    return ref;
  }
  
  function getOD() {
	  return parseUri(document.location.href.replace(/["']/g,'')).host;
  }

  function getNGINZoneId(zoneid) {
    var id = 'ISLab_' + zoneid;
    
    var obj = document.getElementById(id);
    
    if(!obj) {
    	return id;
    }
    
    var i = 1;
    
    while(obj) {
      
    	id = 'ISLab_' + zoneid + '_' + i;
    	obj = document.getElementById(id);
    	i++;
    }
    return id;
  }
  
  function getNGINAtf(id, viewport){
    
	  var ret="";
	  
	  if(!viewport || viewport.status != "ok") {
		  ret="error";
	  }
	  
	  try {
		  
		  var rect = getNGINPosition(id);
		  ret = ((rect.x+rect.width <= viewport.x + viewport.width) && (rect.y + rect.height <= viewport.y + viewport.height));
		  
	  } catch(e) { 
		  
		  ret="error";
	  }
    
	  return ret == true ? 1 : 0;
  }
  function getNGINPosition(id, width, height) {
	  
    var w = (width) ? width : 0; 
    var h = (height) ? height : 0;
    var y = 0;
    var x = 0;
    var rect = { x:x, y:y, width:w, height:h };
    var de = document.documentElement;
    
    try {
    	
      var obj = document.getElementById(id);
      while (obj) { 
    	  rect.x += obj.offsetLeft;
    	  rect.y += obj.offsetTop;
    	  obj = obj.offsetParent;
      }
      
      if(self.pageYOffset) {
    	  
    	  rect.x -= self.pageXOffset;
    	  rect.y -= self.pageYOffset;
    	  
      } else if (de && de.scrollTop) {
    	  
    	  rect.x -= de.scrollLeft;
    	  rect.y -= de.scrollTop;
      
      } else if (document.body) {
        
    	  rect.x -= document.body.scrollLeft;
    	  rect.y -= document.body.scrollTop;
      
      }
    } catch(e){
    	
    }
    
    return rect;
  }
  
function getISLabViewport() {
	    
	  var viewport = {x:0,y:0,width:0,height:0,status:''}
	  var bw = 0;
	  var bh = 0;
	  var de = de;
	  var w = window;
	  var db = document.body;
	  
    try {
      
    	if (typeof w.innerWidth==='number') {
    		bw=w.innerWidth;
    		bh=w.innerHeight;
    	} else if(de && (de.clientWidth || de.clientHeight)) {
    		bw = de.clientWidth;
    		bh = de.clientHeight;
    	} else if (db && (db.clientWidth || db.clientHeight)) {
    		bw = db.clientWidth;
    		bh = db.clientHeight;
    	} else if (de && (de.offsetWidth || de.offsetHeight)) {
    		bw = de.offsetWidth;
    		bh = de.offsetHeight;
    	}
     
    	viewport.status = "ok";
    	viewport.width = bw;
    	viewport.height = bh;
    	
    } catch(e){ 
    	viewport.status="error";
    }
    
    return viewport;
  }
  
function parseUri(u) {
	  
    try{
      
    	var o = {
    			key:["source","protocol","authority","userInfo","user","password","host","port","relative","path","directory","file","query","anchor"],
    			q:{name:"queryKey", parser:/(?:^|&)([^&=]*)=?([^&]*)/g},
    			parser:{loose:/^(?:(?![^:@]+:[^:@\/]*@)([^:\/?#.]+):)?(?:\/\/)?((?:(([^:@]*)(?::([^:@]*))?)?@)?([^:\/?#]*)(?::(\d*))?)(((\/(?:[^?#](?![^?#\/]*\.[^?#\/.]+(?:[?#]|$)))*\/?)?([^?#\/]*))(?:\?([^#]*))?(?:#(.*))?)/}
    	};
    	
    	var m = o.parser.loose.exec(u);
    	var uri={};
    	
    	var i = 14;
    	while(i--) {
    		uri[o.key[i]] = m[i] || '';
    	}
      
    	uri[o.q.name] = {};
    	uri[o.key[12]].replace(o.q.parser, function($0,$1,$2){ if($1) uri[o.q.name][$1]=$2; } );
    	
    	return uri;
    	
    } catch(e) {
    	this.reportError('Failed to get OD',e);
    }
    
    return u;
  }

function getISLabQueryString(id, qs, atf, add_all_tokens) {
	  
	  var qstring = '?atf=' + atf;
	  
	  var viewport = getISLabViewport();
	  
	  if(viewport && viewport.status == "ok") {
		  qstring += '&scres_height=' + viewport.height;
		  qstring += '&scres_width=' + viewport.width;
	  }

	  var adPosition = getNGINPosition(id);
	  
	  if(adPosition) {
		  qstring += '&adpos_x=' + adPosition.x;
		  qstring += '&adpos_y=' + adPosition.y;
	  }
	  
	  var e = encodeURIComponent;
  
	  if (add_all_tokens) {
		  qstring += '&loc=' + e(getSiteURL()) + '&od=' + e(getOD()) + '&ref=' + e(getRefSiteURL());
	  }
	  
	  var args = qs.split('&');
  
	  for (var i = 0; i < args.length; i++) {
		  
		  var arg = args[i].split('=')
		  var key = arg[0]
		  var value = arg[1];
		  
		  if (key === 'debug' 
			  || key === 'u' 
			  || key === 'zoneid' 
			  || key === 'pzoneid' 
			  || key === 'n' 
			  || key === 'ISLab_domain'
			  || key.match(/^ISLab_/)
			) { 
			  qstring += '&' + e(key) + "=" + e(value);
		  }
	  }
	  
	  return qstring;
}

function createiFrame(id, width, height) {

	

	  var ifrm = document.createElement('iframe');
	  
	  ifrm.setAttribute('id',id);
	  ifrm.setAttribute('margin','0');
	  ifrm.setAttribute('padding','0');
	  ifrm.setAttribute('frameBorder','0');
	  ifrm.setAttribute('width',width+'');
	  ifrm.setAttribute('height',height+'');
	  ifrm.setAttribute('scrolling','no');
  
	  try {
		  
		  ifrm.style.margin = "0px";
		  ifrm.style.padding = "0px";
		  ifrm.style.border = '0px none';
		  ifrm.style.width = width + "px";
		  ifrm.style.height = height + "px";
		  ifrm.style.overflow = 'hidden';
		  
	  } catch(e) {
		  
	  }
	  
	  return ifrm;
}

// fire off cookie matching pixels first
fireCookieMatchingPixels();

// next, fire off quality scoring pixels
fireQSPixels();

// now process the ad tag
var qs = null;
var scriptTag;
var fpTag;

if (ISLab_AdsiFrame_Opts!==null) {
	  
	  qs = ISLab_AdsiFrame_Opts;

} else {
	
	  qs = getQueryString();

}

var cdpnLocTag = "<script type='text/javascript'>var ISLab_Loc={};" + "ISLab_Loc.loc='" + getSiteURL() 
					+ "';ISLab_Loc.ref='" + getRefSiteURL() 
					+ "';ISLab_Loc.ifr='" + (isInIframe() ? '1' : '0') 
					+ "';ISLab_Loc.od='" + getOD() + "';</script>";

var domain = getQueryStringArg(qs,'ISLab_domain', adserverDomain);

var abf = 0;
var id = getQueryStringArg(qs, 'pzoneid');
if (!id) {
	id = getQueryStringArg(qs, 'zoneid');
}

abf = getNGINAtf(id, getISLabViewport());

var org_tld = getQueryStringArg(qs, 'tld', "");
var ct_url = getQueryStringArg(qs, 'ct0', "");
var buyer_id = getQueryStringArg(qs, 'buyerid', "");
var sndprc = getQueryStringArg(qs, 'sndprc', "");
var ui = getQueryStringArg(qs, 'ui', "");
var cb = Math.round(new Date().getTime() / 1000);

var adQueryString = getISLabQueryString(id, qs, abf, false);
adQueryString += "&dt=in";
adQueryString += "&buyerid=" + escape(buyer_id);
adQueryString += "&loc=" + escape(getSiteURL());
adQueryString += "&ref=" + escape(getRefSiteURL());
adQueryString += "&ifr=" + (isInIframe() ? '1' : '0');
adQueryString += "&tld=" + escape(getOD());
adQueryString += "&sndprc=" + escape(sndprc);
adQueryString += "&ui=" + ui;
adQueryString += "&ct=" + escape(ct_url);
adQueryString += "&org_tld=" + escape(org_tld);
adQueryString += "&cb=" + cb;

var fpTag = '<scr'+'ipt type="text/javascript" src="http://' + domain + delivery_path
			  + adQueryString + '"></scr' + 'ipt>';
var htmlPrefix = "<html><head><title></title></head><body style='padding:0px;margin:0px;'>";
var htmlSuffix = "<![if !IE]><script type='text/javascript'>document.close();</script><![endif]></body></html>";

if (isInIframe()) {
	document.write(fpTag);
} else {
	  
  if (ISLab_AdsiFrame_Opts !== null) {
  	
  	var placement = ISLab_placement_id || "ISLab_FPI_" + getQueryStringArg(qs, 'z', 0);
  	scriptTag = document.getElementById(placement) || getScriptTag();
  
  } else {
  	scriptTag = getScriptTag();
  }
  
  var width = getQueryStringArg(qs, 'width', 160);
  var height = getQueryStringArg(qs, 'height', 600);
  var ifrm = createiFrame(id, width, height);

  scriptTag.parentNode.insertBefore(ifrm, scriptTag);
 
  fpTag = '<scr'+'ipt type="text/javascript" src="http://' + domain + delivery_path + adQueryString + '"></scr'+'ipt>';

  if(getQueryStringArg(qs, 'ISLab_src', '0') === '1') {
  	
    var ad_server_domain = getQueryStringArg(qs, 'ISLab_ad_domain', adserverDomain);
    ifrm.src = 'http://' + ad_server_domain + delivery_path + adQueryString;
    
  } else {
  	
    var ifr_content = ifrm.contentWindow.document || ifrm.contentDocument;
    ifr_content.write(htmlPrefix + fpTag + htmlSuffix);
    
  }
}

  return {};
})();

ISLab_placement_id = null;
ISLab_AdsiFrame_Opts = null;
