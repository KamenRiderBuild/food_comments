(function(){function n(a,b,c){var d;if(b){for(d in b)if(!c||!(d in a))a[d]=b[d];return a}}function p(a,b,c){a=x(a,b,c);(new Image(1,1)).src=I+a}function i(a){j._setPageId(a);return i}function y(){var a,b=e.performance;a=b&&b.timing;var c=q-z,d=+new Date-z,b={r_pagetiming:1,r_ready:c,r_load:d};a&&n(b,{r_conn:a.connectEnd-a.connectStart,r_recev:a.responseEnd-a.responseStart,r_ready:0<a.domInteractive-a.domLoading?a.domInteractive-a.domLoading:c,r_wait:a.responseStart-a.requestStart,r_load:0<a.loadEventStart-
a.domLoading?a.loadEventStart-a.domLoading:d});if((a=A)||(a=e.DP&&DP.data&&DP.data("hippo_perf_version")))b.test=a;j.mv(b);r(e,"load",y)}var e=window,k=e.document,s=k.referrer,t=k.location.href,h=e.screen,B=0,C=0,D=0,J=function(){},I="http://hls."+(/51ping/.test(k.domain)?"51ping":"dianping")+".com/hippo.gif?",K=e.JSON&&JSON.stringify||function(a){var b=[],c,d;for(c in a)d=a[c],Object(d)!==d&&b.push('"'+c+'":"'+(""+d).replace(/"/g,'\\"')+'"');return"{"+b.join(",")+"}"},g=Array.prototype;g.forEach||
(g.forEach=function(a,b){for(var c=0,d=this.length;c<d;c++)c in this&&a.call(b,this[c],c,this)});var x,u,v={};if(h&&(g=h.height,u=h.width,g&&u&&(v.__hsr=u+"x"+g),h=h.colorDepth))v.__hsc=h+"bit";x=function(a,b,c){c=c||{};n(c,o,false);c={__hlt:"www.dianping.com",__ppp:B,__had:K(c),force:+new Date};n(c,v);t&&(c.__hlh=t);s&&(c.__hlr=s);b.push(D+"|"+C);c[a]=b.join("|");var a=encodeURIComponent,d,e=[];for(d in c){b=c[d];Object(b)!==b&&e.push(d+"="+a(b||""))}return e.join("&")};var f={};n(i,{ext:function(a,
b){var c;if(Object(a)===a)for(c in a)i.ext(c,a[c]);else typeof a==="string"&&Object(b)!==b&&(f[a]=b);return i},rxt:function(a){typeof a==="string"?delete f[a]:arguments.length||(f={});return i},pv:function(a,b){j._setCityId(a);j._setShopType(b);j._setPVInitData(f);return i},mv:function(a,b){if(typeof a==="string"&&Object(b)!==b){f[a]=b;j.mv(f)}return i}});document.hippo=i;var E=!0,F=!0,A,l=e._hip;l||(l=e._hip=[]);var j={_setPageId:function(a){B=a>>>0},_setCityId:function(a){D=a>>>0},_setShopType:function(a){C=
a>>>0},_setPVInitData:function(a){j._setPVInitData=J;setTimeout(function(){p("__pv",[],a||f);f={}},0)},_autoPV:function(a){E=a},_autoPageTiming:function(a){F=a},_setPageTimingVer:function(a){A=a},_setReferrer:function(a){s=a},_setHref:function(a){t=a},_setRequestId:function(a){o.reqid=a},_setGuid:function(a){o.serverguid=a},_setCustomConst:function(a,b){o[a]=b},mv:function(a){p("__mv",["",""],a||f);f={}},pv:function(a){p("__pv",[],a||f);f={}}},o={};l.push=function(a){var b;if(a){b=a.shift();(b=j[b])&&
b.apply(null,a)}};l.forEach(function(a){l.push(a)});E&&l.push(["_setPVInitData"]);l.length=0;var z=e.G_rtop,q,g=k.createElement("div"),h=g.addEventListener?function(a,b,c,d){a.addEventListener(b,c,!!d)}:function(a,b,c){a.attachEvent("on"+b,c)},r=g.removeEventListener?function(a,b,c,d){a.removeEventListener(b,c,!!d)}:function(a,b,c){a.detachEvent("on"+b,c)};if(F){if("complete"===k.readyState)q=+new Date;else{var w=k.documentElement.doScroll,G=w?"readystatechange":"DOMContentLoaded",m=function(){r(k,
G,m);r(e,"load",m);q=+new Date};h(k,G,m);h(e,"load",m);if(w){var H=function(){try{w("left");m()}catch(a){setTimeout(H,10)}},g=!1;try{g=null==e.frameElement}catch(L){}g&&H()}}h(e,"load",y)}"undefined"!==typeof module&&module.exports&&(module.exports=l)})();