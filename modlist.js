"use strict";


function getUrlVars() {
  var vars = {};
  var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&#]*)/gi,    
  function(m, key, value) {
    vars[key] = decodeURIComponent(value);
  });
  return vars;
}

function makeElement(element, attribute, inner) {
  if (typeof(element) === "undefined") {
    return false;
  }
  if (typeof(inner) === "undefined") {
    inner = "";
  }
  var el = document.createElement(element);
  if (typeof(attribute) === "object") {
    for (var key in attribute) {
      el.setAttribute(key, attribute[key]);
    }
  }
  if (!Array.isArray(inner)) {
    inner = [inner];
  }
  for (var k = 0; k < inner.length; k++) {
    if (inner[k].tagName) {
      el.appendChild(inner[k]);
    }
    else {
      el.appendChild(document.createTextNode(inner[k]));
    }
  }
  return el;
}

function Mods(arr) {
  var mods = arr;
  var collator = new Intl.Collator("en", { sensitivity: 'variant', ignorePunctuation: true, numeric: true, caseFirst: false });
  this.length = mods.length;

  this.byType = function () {
    let types = (arguments.length === 1 ? [arguments[0]] : Array.apply(null, arguments));

    let gt = function (modA, modB) {
      let nameA = modA.name.toLowerCase();
      let nameB = modB.name.toLowerCase();
      return collator.compare(nameA, nameB);
    }
    let hasType = function (mod) {
      return types.includes(mod.type);
    };
    return mods.filter(hasType).sort(gt);
  }
  
  this.count = function () {
    return mods.length;
  }
}

String.prototype.safeCSSId = function() {
  return encodeURIComponent(this.toLowerCase()).replace(/%[0-9A-F]{2}/gi,"-");
}

String.prototype.capFrst = function() {
  return this.charAt(0).toUpperCase() + this.slice(1).toLowerCase();
}

function PackVersions(name, version) {

  this.name = name;
  this.version = version;
  var that = this;
  
  this.fetch = function () {
    var url = "https://download.nodecdn.net/containers/atl/packs/"
      + this.name.replace(/[\s:_-]*/gi,"")
      + "/versions/"
      + this.version
      + "/Configs.json";
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.open("GET", url, true);
    xmlhttp.onload = parse.bind(this);
    xmlhttp.send();
  }
  
  var parse = function(aEvt) {
//    console.log(aEvt);
    if (aEvt.target.readyState === XMLHttpRequest.DONE && aEvt.target.status == 200) {
//    console.log("responseText:\n" + aEvt.target.responseText);
      try {
        var json = JSON.parse(aEvt.target.responseText);
        this.data = json;
        this.data.mods = (typeof json.mods !== "undefined") ? new Mods(json.mods) : new Mods ([]);
      }
      catch(err) {
        console.log(err.message + " in " + aEvt.target.statusText);
        return;
      }
      this.display();
    }
  };

  var modBodyRows = function(mods) {
    var modsrows = [];
    mods.forEach(function(mod) {
      var authors = [];
      switch (typeof(mod.authors) === "undefined" ? 0 : mod.authors.length) {
        case 0:
          var elLiAuthor = makeElement("li", {"class":"mod_author_unknown"}, [makeElement("i",{} ,"Unknown")]);
          authors.push(elLiAuthor);
        break;
        case 1:
          var elLiAuthor = makeElement("li", {"class":"mod_author_single"}, mod.authors[0]);
          authors.push(elLiAuthor);
        break;
        default:
          for (let k = 0; k < mod.authors.length; k++) {
            var elLiAuthor = makeElement("li", {"class":"mod_author"},mod.authors[k]);
            authors.push(elLiAuthor);
          }
        break;
      }

      var modwarn = "";
      if (typeof(mod.warning) !== "undefined"
        && typeof(this.data.warnings) !== "undefined"
        && this.data.warnings[mod.warning] !== "undefined") {
        this.foreignHTMLDivNode.innerHTML = this.data.warnings[mod.warning];
        var modwarn = makeElement("details", {"style":"color:#DD7700;font-weight:800;"}, [
          makeElement("summary", {"class":"modlist_warn"}, "⚠ WARNING"),
          ]);
        modwarn.appendChild(document.importNode(this.foreignHTMLDivNode, true));
      }

      var tr = makeElement("tr", {"style":"vertical-align:top","id":"mod-" + mod.name.safeCSSId()}, [
        makeElement("td", {"style":"vertical-align:top;text-align:left"},
          makeElement("a", {"href":mod.website}, mod.name)
        ),
        makeElement("td", {"style":"vertical-align:top;text-align:center"}, mod.version),
        makeElement("td", {"style":"vertical-align:top;text-align:left"}, makeElement("ul", {"class":"list-unstyled"}, authors)),
        makeElement("td", {"style":"vertical-align:top;text-align:left"}, [mod.description, modwarn]),
      ]);
      modsrows.push(tr);
    }.bind(that));
    return modsrows;
  }

  this.display = function() {
    if (typeof(this.data) === "undefined") {
      console.log("Fetch first!!!");
      return
    }
    this.htmldoc = document.implementation.createHTMLDocument("Document parser");
    this.foreignHTMLDivNode = this.htmldoc.createElement("div");
    this.foreignHTMLDivNode.setAttribute("style", "widgh:512px;font-size:12px;padding:14px 8px;background:#444444;color:#dcdcdc");

    var renderNode = document.getElementById("modlist");
    var modlist = document.createDocumentFragment();

    var forge = this.data.mods.byType("forge", "mcpc");
    var elForge = makeElement("ul", {"class":"list-unstyled"});
    if (forge.length == 0) {
      elForge.appendChild(makeElement("li", {}, "Vanilla Minecraft" + " " + this.version));
    } else {
      for (let k in forge) {
        elForge.appendChild(makeElement("li", {}, forge[k].name + " " +  forge[k].version));
      }
    }

    var stdmods = this.data.mods.byType("mods", "jar", "flan");
    var plugins = this.data.mods.byType("plugins");
    var resources = this.data.mods.byType("resourcepack", "extract", "decomp");
    var depmods = this.data.mods.byType("dependency", "coremods");

    modlist.appendChild(makeElement("h1", {"id":"modlist_packtitle"}, this.name));
    modlist.appendChild(makeElement("ul", {}, [makeElement("li", {}, "Version: " + this.version)]));
    modlist.appendChild(makeElement("h2", {"id":"modlist_mcversion"}, "An ATLauncher Mod-pack for Minecraft: " + this.data.minecraft));
    if (this.data.mods.length > 0) {
      modlist.appendChild(makeElement("h3", {}, "Powered by"));
      modlist.appendChild(
        makeElement("ul", {}, [
          makeElement("li", {}, elForge),
          makeElement("li", {}, [
            makeElement("a", {"href":"#modlist_components"}, (this.data.mods.length > 2 ? this.data.mods.length - forge.length : "A") + " Component" + (this.data.mods.length > 2 ? "s" : "")),
              modlist.appendChild(makeElement("ul", {}, [
                stdmods.length > 0 ?
                  makeElement("li", {}, makeElement("a", {"href":"#modlist_mods"}, (stdmods.length > 1 ? stdmods.length : "A") + " Mod" + (stdmods.length > 1 ? "s" : "")))
                  : "",
                plugins.length > 0 ?
                  makeElement("li", {}, makeElement("a", {"href":"#modlist_plugins"}, (plugins.length > 1 ? plugins.length : "A") + " Plugin" + (plugins.length > 1 ? "s" : "")))
                  : "",
                resources.length > 0 ?
                  makeElement("li", {}, makeElement("a", {"href":"#modlist_resources"}, (resources.length > 1 ? resources.length : "A" ) + " Resource" + (resources.length > 1 ? "s" : "")))
                  : "",
                depmods.length > 0 ?
                  makeElement("li", {}, makeElement("a", {"href":"#modlist_depend"}, (depmods.length > 1 ? depmods.length : "A") + " Dependency/Core Mods" + (depmods.length > 1 ? "s" : "")))
                  : ""
              ])
            )
          ])
        ])
      );
    }
    
    if (typeof(this.data.messages) !== "undefined" && Object.keys(this.data.messages).length > 0) {
      modlist.appendChild(makeElement("h2", {"id":"modlist_messages"}, "Messages"));
      for (let msgId in this.data.messages) {
        this.foreignHTMLDivNode.innerHTML = this.data.messages[msgId];

        var msgfragment = makeElement("details", {"class":"modlist_msg"}, [
          makeElement("summary", {"class":"modlist_msg","id":"modlist_msg_" + msgId.safeCSSId()}, msgId.capFrst()),
          ]);
        msgfragment.appendChild(document.importNode(this.foreignHTMLDivNode, true));
        modlist.appendChild(msgfragment);
      }
    }

    var modsPanels = makeElement("div", {"class":"panel-group"}, "");
    if (this.data.mods.length > 0) {
      modsPanels.appendChild(makeElement("h3", {"id":"modlist_components"}, this.data.mods.length - 1 + " Components"));

      if (stdmods.length > 0) {
        modsPanels.appendChild(
          makeElement("div", {"id":"modlist_mods","class":"panel panel-primary panel-collapse"}, [
            makeElement("div", {"class":"panel-heading"}, (stdmods.length > 1 ? stdmods.length : "A" ) + " Standard Mod" + (stdmods.length > 1 ? "s" : "")),
            makeElement("div", {"class":"table-responsive"}, [
              makeElement("table", {"id":"modlist_modstable","class":"table table-condensed table-hover table-bordered table-striped"}, [
                makeElement("thead", {}, [
                  makeElement("tr", {}, [
                    makeElement("th", {"style":"text-align:left"}, "Mod"),
                    makeElement("th", {"style":"text-align:center"}, "Version"),
                    makeElement("th", {"style":"text-align:left"}, "Authors"),
                    makeElement("th", {"style":"text-align:left"}, "Description")
                  ])
                ]),
                makeElement("tbody", {}, modBodyRows(stdmods))
              ])
            ])
          ])
        );
      }

      if (plugins.length > 0) {
        modsPanels.appendChild(
          makeElement("div", {"id":"modlist_plugins","class":"panel panel-primary panel-collapse"}, [
            makeElement("div", {"class":"panel-heading"}, (plugins.length > 1 ? plugins.length : "A" )+ " Plugin" + (plugins.length > 1 ? "s" : "")),
            makeElement("div", {"class":"table-responsive"}, [
              makeElement("table", {"id":"modlist_pluginstable","class":"table table-condensed table-hover table-bordered table-striped"}, [
                makeElement("thead", {}, [
                  makeElement("tr", {}, [
                    makeElement("th", {"style":"text-align:left"}, "Mod"),
                    makeElement("th", {"style":"text-align:center"}, "Version"),
                    makeElement("th", {"style":"text-align:left"}, "Authors"),
                    makeElement("th", {"style":"text-align:left"}, "Description")
                  ])
                ]),
                makeElement("tbody", {}, modBodyRows(plugins))
              ])
            ])
          ])
        );
      }

      if (resources.length > 0) {
        modsPanels.appendChild(
          makeElement("div", {"id":"modlist_resources","class":"panel panel-primary panel-collapse"}, [
            makeElement("div", {"class":"panel-heading"}, (resources.length > 1 ? resources.length : "A") + " Resource"  + (resources.length > 1 ? "s" : "")),
            makeElement("div", {"class":"table-responsive"}, [
              makeElement("table", {"id":"modlist_resourcestable","class":"table table-condensed table-hover table-bordered table-striped"}, [
                makeElement("thead", {}, [
                  makeElement("tr", {}, [
                    makeElement("th", {"style":"text-align:left"}, "Mod"),
                    makeElement("th", {"style":"text-align:center"}, "Version"),
                    makeElement("th", {"style":"text-align:left"}, "Authors"),
                    makeElement("th", {"style":"text-align:left"}, "Description")
                  ])
                ]),
                makeElement("tbody", {}, modBodyRows(resources))
              ])
            ])
          ])
        );
      }

      if (depmods.length > 0) {
        modsPanels.appendChild(
          makeElement("div", {"id":"modlist_depend","class":"panel panel-primary panel-collapse"}, [
            makeElement("div", {"class":"panel-heading"}, (depmods.length > 1 ? depmods.length : "A") + " Dependency/Core Mod" + (depmods.length > 1 ? "s" : "")),
            makeElement("div", {"class":"table-responsive"}, [
              makeElement("table", {"id":"modlist_modstable","class":"table table-condensed table-hover table-bordered table-striped"}, [
                makeElement("thead", {}, [
                  makeElement("tr", {}, [
                    makeElement("th", {"style":"text-align:left"}, "Mod"),
                    makeElement("th", {"style":"text-align:center"}, "Version"),
                    makeElement("th", {"style":"text-align:left"}, "Authors"),
                    makeElement("th", {"style":"text-align:left"}, "Description")
                  ])
                ]),
                makeElement("tbody", {}, modBodyRows(depmods))
              ])
            ])
          ])
        );
      }
    }

    modlist.appendChild(modsPanels);
    renderNode.appendChild(modlist);

  }
  
}

function displayVersion(renderNode, packname, packversion)
{
  var pack = new PackVersions(packname, packversion);

  pack.fetch();

  /* Observe when the generated document fragment
   * has been attached to its element
   * scroll view to matching element ID, now that it exists
   *
   * @var
   * renderNode: The element to observe
   * anchor: The location hash to scroll to
   */
  var observer = new MutationObserver(function(mutations) {
    observer.disconnect();
    var anchor = window.location.hash.slice(1);
    if (typeof(anchor) !== "undefined" && anchor !== "" ){
      var target = window.document.getElementById(anchor);
      if (target != null) {
        document.getElementById(anchor).scrollIntoView({block: "start", behavior: "instant"});
      }
    }
  });

  observer.observe(renderNode, { childList: true });
}

window.onload = function () {
  var renderNode = document.getElementById("modlist");
  var urlvars = getUrlVars();

  var packname = urlvars["p"] ? urlvars["p"] : renderNode.dataset.packName;
  var packversion = urlvars["v"] ? urlvars["v"] : renderNode.dataset.packVersion;

  displayVersion(renderNode, packname, packversion);
}
