/**
 * Tracking and display ads for BGate system.
 * 
 * Date: 19/05/2015
 * Author: ISLab
 */

var adx_url = "http://ptnhttt.uit.edu.vn:8899/bids";
var adserverDomain = 'localhost';
var delivery_path = '/delivery/impress';

var _bgate_bidder = {
	bid_request: null,
	collect_information: function(){
		var _this = this;
		// Generate bid ID
		var d = new Date();
		var n = d.getTime();
		var request_id = "bgate_"+ n; 
		this.bid_request.id = request_id;
        // collect current page
        this.bid_request.site.page = window.location.href;
		// Collect Device infomation
		this.bid_request.device.ua = navigator.userAgent;
		this.bid_request.device.ip = _bgate_user_ip;

	},
	bid: function(){
        var self = this;
		self.collect_information();
		var xhr = new XMLHttpRequest();
        xhr.open("POST", adx_url);
        
        xhr.setRequestHeader('Content-Type', 'application/json');
        xhr.setRequestHeader('x-openrtb-version', '2.2');
     //   xhr.setRequestHeader('Access-Control-Request-Method', '*');
        
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4 && xhr.status == 200) {
                responseObject = JSON.parse(xhr.responseText);
                var ifrm = responseObject['seatbid'][0]['bid'][0]['adm'];
                var impId = responseObject['seatbid'][0]['bid'][0]['impid'];
                var nurl = responseObject['seatbid'][0]['bid'][0]['nurl'];
                initializeBanner(ifrm, impId, nurl);
            } 
            else id (xhr.readyState == 2 && xhr.status == 200) {

            }
            else {
                console.log("no banner match");
                AppendDefaultTag(self.bid_request.imp[0].id);
            }
        }
        xhr.send(JSON.stringify(self.bid_request));
	}
}

function initializeBanner (ifrm, impId, nurl) {
    // var adzone = document.querySelectorAll("[data-zone-id='_bgate_zone_"+ impId +"']");
    // adzone[0].innerHTML = ifrm;
    var adzone = document.querySelector("[data-zone-id='_bgate_zone_"+ impId +"']");
    adzone.innerHTML = ifrm;


    //Call to win notice url
    var xhr = new XMLHttpRequest();
    xhr.open("GET", nurl);
    xhr.setRequestHeader('Content-Type', 'application/json');
    xhr.setRequestHeader('x-openrtb-version', '2.2');
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            
        }
        else if (xhr.readyState == 2 && xhr.status == 200) {
                
        } 
        else {
            console.log("Can not respone win notice to server");
        }
    }
    xhr.send();

}

function AppendDefaultTag(impId) {
    var adzone = document.querySelector("[data-zone-id='_bgate_zone_"+ impId +"']");
    var default_tag = adzone.getAttribute("data-default-tag");
    adzone.innerHTML = _bgate_decodeEntities(default_tag);
}

function getScriptTag() {
    var scripts = document.getElementsByTagName('script');
    var last_script = scripts[scripts.length - 1];
    var rg = new RegExp(script_name, 'i');
    if (last_script.src.search(rg) >= 0) {
        return last_script;
    } else {
        try {
            for (var n = scripts.length - 1; n >= 0; n--) {
                if (scripts[n].src.search(rg) >= 0) {
                    return scripts[n];
                }
            }
        } catch (e) {

        }
    }
    return last_script;
}

var _bgate_user_ip= null;
function _bgate_getip(json){
  _bgate_user_ip = json.ip;
}

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
var InitLvDuitIFrame = (function () {

    function isInIframe() {
        return self !== top;
    }

    function getScriptTag() {
        if ('currentScript' in document) {
            return document.currentScript;
        }

        var scripts = document.getElementsByTagName('script');
        var last_script = scripts[scripts.length - 1];
        var rg = new RegExp(script_name, 'i');
        if (last_script.src.search(rg) >= 0) {
            return last_script;
        } else {
            try {
                for (var n = scripts.length - 1; n >= 0; n--) {
                    if (scripts[n].src.search(rg) >= 0) {
                        return scripts[n];
                    }
                }
            } catch (e) {

            }
        }
        return last_script;
    }

    function getQueryString() {

        var myScript = getScriptTag();
        var rg = new RegExp(script_name, 'i');
        if (myScript.src.search(rg) >= 0) {
            return myScript.src.replace(/^[^\?]+\??/, '');
        }

        return false;
    }

    function getQueryStringArg(qs, key, default_) {
        default_ = default_ || '';
        var query_obj = {};

        qs.replace(new RegExp("([^?=&]+)(=([^&]*))?", "g"), function ($0, $1, $2, $3) { query_obj[$1] = $3; });

        if (typeof (query_obj[key]) === 'undefined' || query_obj[key] === null) {
            return default_;
        } else {
            return query_obj[key];
        }
    }

    function getSiteURL() {
        var site_loc = '';

        try {
            if (isInIframe() && document.referrer) {
                site_loc = document.referrer.replace(/^\s+|\s+$/g, '');
            } else {
                site_loc = document.location.href;
            }
        } catch (e) {

        }
        return site_loc.replace(/["']/g, '');
    }

    function getRefSiteURL() {
        var ref = '';
        if (!isInIframe()) {
            ref = document.referrer.replace(/^\s+|\s+$|["']/g, '');
        }
        return ref;
    }

    function getOD() {
        return parseUri(document.location.href.replace(/["']/g, '')).host;
    }

    function getNGINZoneId(zoneid) {
        var id = 'ISLab_' + zoneid;

        var obj = document.getElementById(id);

        if (!obj) {
            return id;
        }

        var i = 1;

        while (obj) {

            id = 'ISLab_' + zoneid + '_' + i;
            obj = document.getElementById(id);
            i++;
        }
        return id;
    }

    function getNGINAtf(id, viewport) {

        var ret = "";

        if (!viewport || viewport.status != "ok") {
            ret = "error";
        }

        try {

            var rect = getNGINPosition(id);
            ret = ((rect.x + rect.width <= viewport.x + viewport.width) && (rect.y + rect.height <= viewport.y + viewport.height));

        } catch (e) {

            ret = "error";
        }

        return ret == true ? 1 : 0;
    }
    function getNGINPosition(id, width, height) {

        var w = (width) ? width : 0;
        var h = (height) ? height : 0;
        var y = 0;
        var x = 0;
        var rect = { x: x, y: y, width: w, height: h };
        var de = document.documentElement;

        try {

            var obj = document.getElementById(id);
            while (obj) {
                rect.x += obj.offsetLeft;
                rect.y += obj.offsetTop;
                obj = obj.offsetParent;
            }

            if (self.pageYOffset) {

                rect.x -= self.pageXOffset;
                rect.y -= self.pageYOffset;

            } else if (de && de.scrollTop) {

                rect.x -= de.scrollLeft;
                rect.y -= de.scrollTop;

            } else if (document.body) {

                rect.x -= document.body.scrollLeft;
                rect.y -= document.body.scrollTop;

            }
        } catch (e) {

        }

        return rect;
    }

    function getISLabViewport() {

        var viewport = { x: 0, y: 0, width: 0, height: 0, status: '' }
        var bw = 0;
        var bh = 0;
        var de = de;
        var w = window;
        var db = document.body;

        try {

            if (typeof w.innerWidth === 'number') {
                bw = w.innerWidth;
                bh = w.innerHeight;
            } else if (de && (de.clientWidth || de.clientHeight)) {
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

        } catch (e) {
            viewport.status = "error";
        }

        return viewport;
    }

    function parseUri(u) {

        try {

            var o = {
                key: ["source", "protocol", "authority", "userInfo", "user", "password", "host", "port", "relative", "path", "directory", "file", "query", "anchor"],
                q: { name: "queryKey", parser: /(?:^|&)([^&=]*)=?([^&]*)/g },
                parser: { loose: /^(?:(?![^:@]+:[^:@\/]*@)([^:\/?#.]+):)?(?:\/\/)?((?:(([^:@]*)(?::([^:@]*))?)?@)?([^:\/?#]*)(?::(\d*))?)(((\/(?:[^?#](?![^?#\/]*\.[^?#\/.]+(?:[?#]|$)))*\/?)?([^?#\/]*))(?:\?([^#]*))?(?:#(.*))?)/ }
            };

            var m = o.parser.loose.exec(u);
            var uri = {};

            var i = 14;
            while (i--) {
                uri[o.key[i]] = m[i] || '';
            }

            uri[o.q.name] = {};
            uri[o.key[12]].replace(o.q.parser, function ($0, $1, $2) { if ($1) uri[o.q.name][$1] = $2; });

            return uri;

        } catch (e) {
            this.reportError('Failed to get OD', e);
        }

        return u;
    }

    function getISLabQueryString(id, qs, atf, add_all_tokens) {

        var qstring = '?atf=' + atf;

        var viewport = getISLabViewport();

        if (viewport && viewport.status == "ok") {
            qstring += '&scres_height=' + viewport.height;
            qstring += '&scres_width=' + viewport.width;
        }

        var adPosition = getNGINPosition(id);

        if (adPosition) {
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

        ifrm.setAttribute('id', id);
        ifrm.setAttribute('margin', '0');
        ifrm.setAttribute('padding', '0');
        ifrm.setAttribute('frameBorder', '0');
        ifrm.setAttribute('width', width + '');
        ifrm.setAttribute('height', height + '');
        ifrm.setAttribute('scrolling', 'no');

        try {

            ifrm.style.margin = "0px";
            ifrm.style.padding = "0px";
            ifrm.style.border = '0px none';
            ifrm.style.width = width + "px";
            ifrm.style.height = height + "px";
            ifrm.style.overflow = 'hidden';

        } catch (e) {

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

    if (ISLab_AdsiFrame_Opts !== null) {

        qs = ISLab_AdsiFrame_Opts;

    } else {

        qs = getQueryString();

    }

    var cdpnLocTag = "<script type='text/javascript'>var ISLab_Loc={};" + "ISLab_Loc.loc='" + getSiteURL()
        + "';ISLab_Loc.ref='" + getRefSiteURL()
        + "';ISLab_Loc.ifr='" + (isInIframe() ? '1' : '0')
        + "';ISLab_Loc.od='" + getOD() + "';</script>";

    var domain = getQueryStringArg(qs, 'ISLab_domain', adserverDomain);

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

    var viewport = getISLabViewport();
    var adPosition = getNGINPosition(id);
    var e = encodeURIComponent;
    var args = qs.split('&');

    var adzone_height = null;
    var adzone_width = null;
    var adzone_post_x = null;
    var adzone_post_y = null;


    var adQueryString = getISLabQueryString(id, qs, abf, false);



    return {};
})();

var _bgate_decodeEntities = (function() {
  // this prevents any overhead from creating the object each time
  var element = document.createElement('div');

  function decodeHTMLEntities (str) {
    if(str && typeof str === 'string') {
      // strip script/html tags
      str = str.replace(/<script[^>]*>([\S\s]*?)<\/script>/gmi, '');
      str = str.replace(/<\/?\w(?:[^"'>]|"[^"]*"|'[^']*')*>/gmi, '');
      element.innerHTML = str;
      str = element.textContent;
      element.textContent = '';
    }

    return str;
  }

  return decodeHTMLEntities;
})();


ISLab_placement_id = null;
ISLab_AdsiFrame_Opts = null;
