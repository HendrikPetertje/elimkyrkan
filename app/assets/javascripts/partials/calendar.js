var maxNumOfDays = 10;

function loadCalendar () {
  $.getJSON("/calendar/calendar.json", function (json) {
    drawCalendar(json);
  });
}

function drawCalendar (cal) {
  //Show / collapse calendar
  $(".calendar .calheader").click(function () {
    $(".calendar ul").slideToggle(500);
  })

  function getDay (num) {
    if (num == 0)
      return "Sön";
    if (num == 1)
      return "Mån";
    if (num == 2)
      return "Tis";
    if (num == 3)
      return "Ons";
    if (num == 4)
      return "Tor";
    if (num == 5)
      return "Fre";
    if (num = 5)
      return "Lör";
  }


  var nextRow = {
    day: -1,
    events: []
  };
  var numOfDays = 0;
  var calFrame = $(".calendar ul");
  if (calFrame != null) {
    for (var i = 0; i < cal.length && numOfDays < maxNumOfDays; i++) {
      if (nextRow.day == -1){
        nextRow.day = cal[i].Date;
      }

      if (nextRow.day == cal[i].Date) {
        nextRow.events.push(cal[i]);
      } else {
        i--;
        pushLine();
        numOfDays++;
      }
    }
  }

  function formatTime (h, m) {
    if (h === 0 && m === 0) {
      return "Hela dagen";
    }
    if (h.toString().length == 1) {
      h = h.toString() + "0";
    }
    if (m.toString().length == 1) {
      m = m.toString() + "0";
    }

    return h + ":" + m;
  }

  function pushLine () {
    
    var evt ="";

    for (var i = nextRow.events.length - 1; i >= 0; i--) {
      evt += "<div class='eventrow' data-summary='" + nextRow.events[i].summary + "'><div class='eventtime'>" + formatTime(nextRow.events[i].Hour,nextRow.events[i].Minute) + "</div>" +
             "<div class='eventtitle'>" + nextRow.events[i].title + "</div></div>";
    };

    var sunday = "";
    if (nextRow.events[0].Day == 0) {
      sunday = "issunday";
    }

    var row = "<li>"                                                      +
                "<div class='datebox " + sunday + "'><div class='number'>" + nextRow.day + "</div>"       +
                "<div class='day'>" + getDay(nextRow.events[0].Day) + "</div>"              +
                "</div>"                                 +
                "<div class='eventbox'>" + evt + "</div>"      +
              "</li>";

    calFrame.append(row);

    nextRow.events = [];
    nextRow.day = -1;
  }
}



// Linkify plugin
!function(a,b,c){"use strict";function d(a,b){this._defaults=e,this.element=a,this.setOptions(b),this.init()}var e={tagName:"a",newLine:"\n",target:"_blank",linkClass:null,linkClasses:[],linkAttributes:null};d.prototype={constructor:d,init:function(){1===this.element.nodeType?d.linkifyNode.call(this,this.element):this.element=d.linkify.call(this,this.element.toString())},setOptions:function(a){this.settings=d.extendSettings(a,this.settings)},toString:function(){return this.element.toString()}},d.extendSettings=function(a,b){var c;b=b||{};for(c in e)b[c]||(b[c]=e[c]);for(c in a)b[c]=a[c];return b},d.linkMatch=new RegExp(["(",'\\s|[^a-zA-Z0-9.\\+_\\/"\\>\\-]|^',")(?:","(","[a-zA-Z0-9\\+_\\-]+","(?:","\\.[a-zA-Z0-9\\+_\\-]+",")*@",")?(","http:\\/\\/|https:\\/\\/|ftp:\\/\\/",")?(","(?:(?:[a-z0-9][a-z0-9_%\\-_+]*\\.)+)",")(","(?:com|ca|co|edu|gov|net|org|dev|biz|cat|int|pro|tel|mil|aero|asia|coop|info|jobs|mobi|museum|name|post|travel|local|[a-z]{2})",")(","(?::\\d{1,5})",")?(","(?:","[\\/|\\?]","(?:","[\\-a-zA-Z0-9_%#*&+=~!?,;:.\\/]*",")*",")","[\\-\\/a-zA-Z0-9_%#*&+=~]","|","\\/?",")?",")(",'[^a-zA-Z0-9\\+_\\/"\\<\\-]|$',")"].join(""),"g"),d.emailLinkMatch=/(<[a-z]+ href=\")(http:\/\/)([a-zA-Z0-9\+_\-]+(?:\.[a-zA-Z0-9\+_\-]+)*@)/g,d.linkify=function(a,b){var c,e,f,g=[];this.constructor===d&&this.settings?(e=this.settings,b&&(e=d.extendSettings(b,e))):e=d.extendSettings(b),f=e.linkClass?e.linkClass.split(/\s+/):[],f.push.apply(f,e.linkClasses),a=a.replace(/</g,"&lt;").replace(/(\s)/g,"$1$1"),g.push("$1<"+e.tagName,'href="http://$2$4$5$6$7"'),g.push('class="linkified'+(f.length>0?" "+f.join(" "):"")+'"'),e.target&&g.push('target="'+e.target+'"');for(c in e.linkAttributes)g.push([c,'="',e.linkAttributes[c].replace(/\"/g,"&quot;").replace(/\$/g,"&#36;"),'"'].join(""));return g.push(">$2$3$4$5$6$7</"+e.tagName+">$8"),a=a.replace(d.linkMatch,g.join(" ")),a=a.replace(d.emailLinkMatch,"$1mailto:$3"),a=a.replace(/(\s){2}/g,"$1"),a=a.replace(/\n/g,e.newLine)},d.linkifyNode=function(a){var b,e,f,g,h;if(a&&"object"==typeof a&&1===a.nodeType&&"a"!==a.tagName.toLowerCase()&&!/[^\s]linkified[\s$]/.test(a.className)){for(b=[],g=d._dummyElement||c.createElement("div"),e=a.firstChild,f=a.childElementCount;e;){if(3===e.nodeType){for(;g.firstChild;)g.removeChild(g.firstChild);for(g.innerHTML=d.linkify.call(this,e.textContent||e.innerText||e.nodeValue),b.push.apply(b,g.childNodes);g.firstChild;)g.removeChild(g.firstChild)}else 1===e.nodeType?b.push(d.linkifyNode(e)):b.push(e);e=e.nextSibling}for(;a.firstChild;)a.removeChild(a.firstChild);for(h=0;h<b.length;h++)a.appendChild(b[h])}return a},d._dummyElement=c.createElement("div"),a.fn.linkify=function(b){return this.each(function(){var c;(c=a.data(this,"plugin-linkify"))?(c.setOptions(b),c.init()):a.data(this,"plugin-linkify",new d(this,b))})},a.fn.linkify.Constructor=d,a(b).on("load",function(){a("[data-linkify]").each(function(){var b,c=a(this),d=c.attr("data-linkify"),e={tagName:c.attr("data-linkify-tagname"),newLine:c.attr("data-linkify-newline"),target:c.attr("data-linkify-target"),linkClass:c.attr("data-linkify-linkclass")};for(var f in e)"undefined"==typeof e[f]&&delete e[f];b="this"===d?c:c.find(d),b.linkify(e)})}),a("body").on("click",".linkified",function(){var c=a(this),d=c.attr("href"),e=/^mailto:/i.test(d),f=c.attr("target");return e?b.location.href=d:b.open(d,f),!1})}(jQuery,window,document);
