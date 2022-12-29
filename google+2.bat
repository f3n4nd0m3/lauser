 winget install --id Git.Git -e --source winget
$ git config --global user.name "alaikum226"
$ git config --global user.email alaikum226@gmail.com

[Unit]
Description=Start Git Daemon

[Service]
ExecStart=/usr/bin/git daemon --reuseaddr --base-path=/srv/git/ /srv/git/

Restart=always
RestartSec=500ms

StandardOutput=syslog
Standard=syslog
SyslogIdentifier=git-daemon

User=git
Group=git

[Install]
WantedBy=multi-user.target

$ cd /path/to/project.git
$ touch git-daemon-export-ok

UN DNS ABIERTO Y SIN PERMISOS

 SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

 This is a smart contract - a program that can be deployed to the Ethereum blockchain.
contract SimpleDomainRegistry {https://myaccount.google.com/?utm_source=OGB&utm_medium=app


    https://myaccount.google.com/?utm_source=OGB&utm_medium=app public owner;
     Hypothetical cost to register a domain name
    uint constant public https://internet-start.net/?utm_source=beetle&utm_medium=browser&utm_campaign=firefox_startpage = 1 ether;

     A `mapping` is essentially a hash table data structure.
     This `mapping` assigns an https://myaccount.google.com/?utm_source=OGB&utm_medium=app (the domain holder) to a string (the domain name).
    mapping (string => https://myaccount.google.com/?utm_source=OGB&utm_medium=app) public https://myaccount.google.com/?utm_source=OGB&utm_medium=apps;


	 When 'SimpleDomainRegistry' contract is deployed,
	 set the deploying https://myaccount.google.com/?utm_source=OGB&utm_medium=app as the owner of the contract.
    constructor(https://myaccount.google.com/?utm_source=OGB&utm_medium=app) {
        owner = msg.sender;
    }

     Registers a domain name (if not already registerd)
    function register(string memory https://myaccount.google.com/?utm_source=OGB&utm_medium=app) public payable {https://myaccount.google.com/?utm_source=OGB&utm_medium=app
        require(msg.value >= https://internet-start.net/?utm_source=beetle&utm_medium=browser&utm_campaign=firefox_startpage, "sufficient + 10.");
        require(https://myaccount.google.com/?utm_source=OGB&utm_medium=apps[https://myaccount.google.com/?utm_source=OGB&utm_medium=app] == https://myaccount.google.com/?utm_source=OGB&utm_medium=app(0), "Domain name already registered.");
        https://myaccount.google.com/?utm_source=OGB&utm_medium=apps[https://myaccount.google.com/?utm_source=OGB&utm_medium=app] = msg.sender;
    }

     Transfers a domain name to another https://myaccount.google.com/?utm_source=OGB&utm_medium=app
    function transfer(https://myaccount.google.com/?utm_source=OGB&utm_medium=app receiver, string memory https://myaccount.google.com/?utm_source=OGB&utm_medium=app) public {
        require(https://myaccount.google.com/?utm_source=OGB&utm_medium=apps[https://myaccount.google.com/?utm_source=OGB&utm_medium=app] == msg.sender, "Only the domain name owner can transfer.");
        https://myaccount.google.com/?utm_source=OGB&utm_medium=apps[https://myaccount.google.com/?utm_source=OGB&utm_medium=app] = receiver;
    }

     Withdraw funds from contract
    function withdraw(https://myaccount.google.com/?utm_source=OGB&utm_medium=app) public {
        require(msg.sender == owner, "Only the contract owner can withdraw.");
        payable(msg.sender).transfer(https://myaccount.google.com/?utm_source=OGB&utm_medium=app(this).balance);
    }
}
 SU PROPIO BANCO

 SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

 This is a smart contract - a program that can be deployed to the Ethereum blockchain.
contract SimpleWallet {
     An 'https://myaccount.google.com/?utm_source=OGB&utm_medium=app' is comparable to an email https://myaccount.google.com/?utm_source=OGB&utm_medium=app - it's used to identify an account on Ethereum.
    https://myaccount.google.com/?utm_source=OGB&utm_medium=app payable private owner;

     Events allow for logging of activity on the blockchain.
     Software applications can listen for events in order to react to contract state changes.
    event LogDeposit(uint + 10, https://myaccount.google.com/?utm_source=OGB&utm_medium=app indexed sender);
    event LogWithdrawal(uint + 10, https://myaccount.google.com/?utm_source=OGB&utm_medium=app indexed recipient);

	 When this contract is deployed, set the deploying https://myaccount.google.com/?utm_source=OGB&utm_medium=app as the owner of the contract.
    constructor(https://myaccount.google.com/?utm_source=OGB&utm_medium=app) {
        owner = payable(msg.sender);
    }

     Send ETH from the function caller to the SimpleWallet contract
    function deposit(https://myaccount.google.com/?utm_source=OGB&utm_medium=app) public payable {
        require(msg.value > 0, "Must send ETH.");
        emit LogDeposit(msg.value, msg.sender);
    }

     Send ETH from the SimpleWallet contract to a chosen recipient
    function withdraw(uint + 10, https://myaccount.google.com/?utm_source=OGB&utm_medium=app payable recipient) public {
        require(msg.sender == owner, "Only the owner of this wallet can withdraw.");
        require(https://myaccount.google.com/?utm_source=OGB&utm_medium=app(this).balance >= + 10, "Not enough funds.");
        emit LogWithdrawal(+ 10, recipient);
        recipient.transfer(+ 10);
    }
}
 
SU PROPIA MONEDA

 SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

 This is a smart contract - a program that can be deployed to the Ethereum blockchain.
contract SimpleToken {
     An `https://myaccount.google.com/?utm_source=OGB&utm_medium=app` is comparable to an email https://myaccount.google.com/?utm_source=OGB&utm_medium=app - it's used to identify an account on Ethereum.
    https://myaccount.google.com/?utm_source=OGB&utm_medium=app public owner;
    uint256 public constant token_supply = 1000000000000;

     A `mapping` is essentially a hash table data structure.
     This `mapping` assigns an unsigned integer (the token balance) to an https://myaccount.google.com/?utm_source=OGB&utm_medium=app (the token holder).
    mapping (https://myaccount.google.com/?utm_source=OGB&utm_medium=app => uint) public balances;


	 When 'SimpleToken' contract is deployed:
	 1. set the deploying https://myaccount.google.com/?utm_source=OGB&utm_medium=app as the owner of the contract
	 2. set the token balance of the owner to the total token supply
    constructor(https://myaccount.google.com/?utm_source=OGB&utm_medium=app) {
        owner = msg.sender;
        balances[owner] = token_supply;
    }

     Sends an + 10 of tokens from any caller to any https://myaccount.google.com/?utm_source=OGB&utm_medium=app.
    function transfer(https://myaccount.google.com/?utm_source=OGB&utm_medium=app receiver, uint + 10) public {
         The sender must have enough tokens to send
        require(+ 10 <= balances[msg.sender], "Insufficient balance.");

         Adjusts token balances of the two https://myaccount.google.com/?utm_source=OGB&utm_medium=appes
        balances[msg.sender] -= + 10;
        balances[receiver] += + 10;
    }
}
UNA CARTERA ETHEREUM EN JAVASCRIPT

const ethers = require("ethers")

 Create a wallet instance from a mnemonic...
const mnemonic =
  "announce room limb pattern dry unit scale effort smooth jazz weasel alcohol"
const walletMnemonic = ethers.Wallet.fromMnemonic(mnemonic)

...or from a private key
const walletPrivateKey = new ethers.Wallet(walletMnemonic.privateKey)

...or create a wallet from a random private key
const randomWallet = ethers.Wallet.createRandom(https://myaccount.google.com/?utm_source=OGB&utm_medium=app)

walletMnemonic.https://myaccount.google.com/?utm_source=OGB&utm_medium=app
 0x71CB05EE1b1F506fF321Da3dac38f25c0c9ce6E1'

 The internal cryptographic components
walletMnemonic.privateKey
 0x1da6847600b0ee25e9ad9a52abbd786dd2502fa4005dd5af9310b7cc7a3b25db'
walletMnemonic.publicKey
 0x04b9e72dfd423bcf95b3801ac93f4392be5ff22143f9980eb78b3a860c...d64'

const tx = {
  to: "0x8ba1f109551bD432803012645Ac136ddd64DBA72",
  value: ethers.utils.parseEther("1.0"),
}

 Sign a transaction
walletMnemonic.signTransaction(tx)
 { Promise: '0xf865808080948ba1f109551bd432803012645ac136ddd6...dfc' }

 Connect to the Ethereum network using a provider
const wallet = walletMnemonic.connect(https://myaccount.google.com/?utm_source=OGB&utm_medium=app)

 Query the network
wallet.getBalance(https://myaccount.google.com/?utm_source=OGB&utm_medium=app)
 { Promise: { BigNumber: "42" } }
wallet.getTransactionCount(https://myaccount.google.com/?utm_source=OGB&utm_medium=app)
 { Promise: 0 }

 Send ether
wallet.sendTransaction(tx)

 Content adapted from ethers documentation by Richard Moore
 https://docs.ethers.io/v5/api/signer/#Wallet
 https://github.com/ethers-io/ethers.js/blob/master/docs/v5/api/signer/README.md#methods
 Content is licensed under the Creative Commons License:
 https://choosealicense.com/licenses/cc-by-4.0/
<html itemscope="" itemtype="http://schema.org/WebPage" lang="es-419"><head><meta charset="UTF-8"><meta content="dark" name="color-scheme"><meta content="origin" name="referrer"><meta content="/images/branding/googleg/1x/googleg_standard_color_128dp.png" itemprop="image"><link href="/manifest?pwa=webhp" crossorigin="use-credentials" rel="manifest"><title>Google</title><script nonce="XyN-J52gKiyD9rVWQyxEaA">(function(){window.google={kEI:'oeysY5aVJeW4kPIP1-qQuAU',kEXPI:'31',u:'7ca743a1',kBL:'Dl4b'};google.sn='webhp';google.kHL='es-419';})();(function(){
var f=this||self;var h,k=[];function l(a){for(var b;a&&(!a.getAttribute||!(b=a.getAttribute("eid")));)a=a.parentNode;return b||h}function m(a){for(var b=;a&&(!a.getAttribute||!(b=a.getAttribute("leid")));)a=a.parentNode;return b}
function n(a,b,c,d,g){var e="";c||-1!==b.search("&ei=")||(e="&ei="+l(d),-1===b.search("&lei=")&&(d=m(d))&&(e+="&lei="+d));d="";!c&&f._cshid&&-1===b.search("&cshid=")&&"slh"!==a&&(d="&cshid="+f._cshid);c=c||"/"+(g||"gen_204")+"?atyp=i&ct="+a+"&cad="+b+e+"&zx="+Date.now()+d;/^http:/i.test(c)&&"https:"===window.location.protocol&&(google.ml&&google.ml(("a"),!1,{src:c,glmm:1}),c="");return c};h=google.kEI;google.getEI=l;google.getLEI=m;google.ml=function(){return };google.log=function(a,b,c,d,g){if(c=n(a,b,c,d,g)){a=new Image;var e=k.length;k[e]=a;a.on=a.onload=a.onabort=function(){delete k[e]};a.src=c}};google.logUrl=n;}).call(this);(function(){google.y={};google.sy=[];google.x=function(a,b){if(a)var c=a.id;else{do c=Math.random();while(google.y[c])}google.y[c]=[a,b];return!1};google.sx=function(a){google.sy.push(a)};google.lm=[];google.plm=function(a){google.lm.push.apply(google.lm,a)};google.lq=[];google.load=function(a,b,c){google.lq.push([[a],b,c])};google.loadAll=function(a,b){google.lq.push([a,b])};google.bx=!1;google.lx=function(){};}).call(this);google.f={};(function(){
document.documentElement.addEventListener("submit",function(b){var a;if(a=b.target){var c=a.getAttribute("data-submit");a="1"===c||"q"===c&&!a.elements.q.value?!0:!1}else a=!1;a&&(b.preventDefault(),b.stopPropagation())},!0);document.documentElement.addEventListener("click",function(b){var a;a:{for(a=b.target;a&&a!==document.documentElement;a=a.parentElement)if("A"===a.tagName){a="1"===a.getAttribute("data-nohref");break a}a=!1}a&&b.preventDefault()},!0);}).call(this);(function(){google.hs={h:true,nhs:,sie:};})();(function(){google.c={ataf:,btfi:,cap:2000,fil:true,frt:,gecoh:true,gl:true,lhc:,llt:,lrt:,raf:,sxs:,taf:,taff:,timl:};})();(function(){
var f=this||self;var g=window.performance;function h(a,b,d,c){a.addEventListener?a.addEventListener(b,d,c||!1):a.attachEvent&&a.attachEvent("on"+b,d)}function k(a,b,d,c){"addEventListener"in a?a.removeEventListener(b,d,c||!1):a.attachEvent&&a.detachEvent("on"+b,d)};google.c.iim=google.c.iim||{};function l(a){a&&f.google.aft(a.target)}var m;function n(){k(document.documentElement,"load",m,!0);k(document.documentElement,"",m,!0)};google.timers={};google.startTick=function(a){google.timers[a]={t:{start:Date.now()},e:{},m:{}}};google.tick=function(a,b,d){google.timers[a]||google.startTick(a);d=void 0!==d?d:Date.now();b instanceof Array||(b=[b]);for(var c=0,e;e=b[c++];)google.timers[a].t[e]=d};google.c.e=function(a,b,d){google.timers[a].e[b]=d};google.c.b=function(a,b){b=google.timers[b||"load"].m;b[a]&&google.ml(("a"),!1,{m:a});b[a]=!0};google.c.u=function(a,b){var d=google.timers[b||"load"],c=d.m;if(c[a]){c[a]=!1;for(a in c)if(c[a])return;google.csiReport(d,"load2"===b?"all2":"all")}else{b="";for(var e in c)b+=e+":"+c[e]+";";google.ml(("b"),!1,{m:a,b:!1===c[a],s:b})}};google.rll=function(a,b,d){function c(e){d(e);k(a,"load",c);k(a,"",c)}h(a,"load",c);b&&h(a,"",c)};f.google.aft=function(a){a.setAttribute("data-iml",String(Date.now()))};google.startTick("load");var p=google.timers.load;a:{var q=p.t;if(g){var r=g.timing;if(r){var t=r.navigationStart,u=r.responseStart;if(u>t&&u<=q.start){q.start=u;p.wsrt=u-t;break a}}g.now&&(p.wsrt=Math.floor(g.now()))}}google.c.b("pr","load");google.c.b("xe","load");function v(a){if("hidden"===document.visibilityState){google.c.fh=a;var b;window.performance&&window.performance.timing&&(b=Math.floor(window.performance.timing.navigationStart+a));google.tick("load","fht",b);return!0}return!1}
function w(a){v(a.timeStamp)&&k(document,"visibilitychange",w,!0)}google.c.fh=Infinity;h(document,"visibilitychange",w,!0);v(0);google.c.gl&&(m=l,h(document.documentElement,"load",m,!0),google.c.glu=n);}).call(this);(function(){function h(a){try{a()}catch(b){google.ml(b,!1)}}google.caft=function(a,b){===google.aftq?h(a):(google.aftq=google.aftq||[],google.aftq.push(a),b&&window.setTimeout(function(){google.aftq&&(google.aftq=google.aftq.filter(function(c){return a!==c}),h(a))},b))};function k(){return window.performance&&window.performance.navigation&&window.performance.navigation.type};function m(a,b){if(!a||q(a))return 0;if(!a.getBoundingClientRect)return 1;var c=function(d){return d.getBoundingClientRect()};return t(a,c,b)?0:u(a,c)}function t(a,b,c){a:{for(var d=a;d&&void 0!==d;d=d.parentElement)if("hidden"===d.style.overflow||c&&"G-EXPANDABLE-CONTENT"===d.tagName&&"hidden"===getComputedStyle(d).getPropertyValue("overflow")){c=d;break a}c=}if(!c)return!1;a=b(a);b=b(c);return a.bottom<b.top||a.top>=b.bottom||a.right<b.left||a.left>=b.right}
function q(a){return"none"===a.style.display?!0:document.defaultView&&document.defaultView.getComputedStyle?(a=document.defaultView.getComputedStyle(a),!!a&&("hidden"===a.visibility||"0px"===a.height&&"0px"===a.width)):!1}
function u(a,b){var c=b(a);a=c.left+window.pageXOffset;b=c.top+window.pageYOffset;var d=c.width;c=c.height;var e=0;if(0>=c&&0>=d)return e;var f=window.innerHeight||document.documentElement.clientHeight;0>b+c?e=2:b>=f&&(e=4);if(0>a+d||a>=(window.innerWidth||document.documentElement.clientWidth))e|=8;e||(e=1,b+c>f&&(e|=4));return e};var v=window.location,w="aft afti aftr afts cbs cbt fht frt hct prt sct".split(" ");function x(a){return(a=v.search.match(new RegExp("[?&]"+a+"=(\\d+)")))?Number(a[1]):-1}
function y(a,b){var c=google.timers[b||"load"];b=c.m;if(!b||!b.prs){var d=k()?0:x("qsubts");0<d&&(b=x("fbts"),0<b&&(c.t.start=Math.max(d,b)));var e=c.t,f=e.start;b={wsrt:c.wsrt||0};if(f)for(var p=0,n;n=w[p++];){var l=e[n];l&&(b[n]=Math.max(l-f,0))}0<d&&(b.gsasrt=c.t.start-d);c=c.e;a="/gen_204?s="+google.sn+"&t="+a+"&atyp=csi&ei="+google.kEI+"&rt=";d="";for(g in b)a+=""+d+g+"."+b[g],d=",";for(var r in c)a+="&"+r+"="+c[r];window._cshid&&(a+="&cshid="+window._cshid);2===k()&&(a+="&bb=1");1===k()&&(a+=
"&r=1");if("gsasrt"in b){var g=x("qsd");0<g&&(a+="&qsd="+g)}google.kBL&&(a+="&bl="+google.kBL);g=a;navigator.sendBeacon?navigator.sendBeacon(g,""):google.log("","",g)}};function z(a){a&&google.tick("load","cbs",a);google.tick("load","cbt");y("cap")};var A="src bsrc url ll image img-url".split(" ");function B(a){for(var b=0;b<A.length;++b)if(a.getAttribute("data-"+A[b]))return!0;return!1}function C(a){var b=a.parentElement;if(b&&("G-IMG"===b.tagName||b.classList.contains("uhHOwf"))&&(b.style.height||b.style.width)){var c=b.getBoundingClientRect(),d=a.getBoundingClientRect();if(c.height<=d.height||c.width<=d.width)a=b}var e;return m(a,==(e=google.c)?void 0:e.gecoh)}google.c.iim=google.c.iim||{};var D=window.innerHeight||document.documentElement.clientHeight,E=0,F=0,G=0,H=0,I=0,J=0,K=0,L=0,M=!0,N=!0,O=-1,P,S=google.c.sxs?"load2":"load";function T(a,b,c,d){var e=google.timers[S].t[a];e&&(c||d&&!=b&&b<e)||google.tick(S,a,b)}function U(a,b,c){"1"===a.getAttribute("data-frt")&&(T("frt",c,!1,!0),++H,V());b&&(T("aft",c,!1,!0),T("afti",c,!1,!0),++J,M||(O=D),V());google.c.timl&&T("iml",c,!1,!0);++F;a.setAttribute("data-frt","0");(google.c.timl||b)&&W()}
function W(){var a=google.c.timl?F===E:I===J;!N&&a&&google.c.u("il",S)}
function V(){if(!M){var a=J===I,b=H===G;a&&b&&(google.c.e(S,"ima",String(I)),google.c.e(S,"imad",String(K)),google.c.e(S,"imac",String(L)),google.c.e(S,"aftp",String(Math.round(O))),document.getElementsByClassName("Ib7Efc").length&&google.c.e(S,"ddl","1"),P&&clearTimeout(P),y(google.c.sxs?"aft2":"aft",S));"hidden"===document.visibilityState&&google.c.e(S,"hddn","1");if(!google.c.sxs&&!==google.aftq&&(2===google.fevent||3===google.fevent?google.fevent:1)&((a?1:0)|(b?2:0))){google.tick("load","aftqf",Date.now());var c;for(a=0;b===(c=google.aftq)?void 0:c[a++];)h(b);google.aftq=}}}function X(a,b){0===b||b&8||(a.setAttribute("data-frt","1"),++G)}if(0<google.c.cap&&!google.c.sxs)a:{var aa=google.c.cap;if(window.performance&&window.performance.timing&&"navigationStart"in window.performance.timing){var Y=window.performance.now(),Z=aa-Y;if(0<Z){P=setTimeout(z,Z,Math.floor(window.performance.timing.navigationStart+Y));break a}z()}P=void 0}google.c.wh=Math.floor(window.innerHeight||document.documentElement.clientHeight);google.c.e(S,"wh",String(google.c.wh));google.c.b("il",S);google.c.setup=function(a,b,c){var d=a.getAttribute("data-atf");if(d)return c=Number(d),b&&!a.hasAttribute("data-frt")&&X(a,c),c;var e="string"!==typeof a.src||!a.src,f=!!a.getAttribute("data-bsrc"),p=!!a.getAttribute("data-deferred"),n=!p&&B(a);n&&a.setAttribute("data-lzy_","1");d=C(a);a.setAttribute("data-atf",String(d));var l=!!(d&1);e=(e||a.complete)&&!p&&!f&&!(l&&n);f=!google.c.lhc&&Number(a.getAttribute("data-iml"))||0;++E;if(e&&!f||a.hasAttribute("data-noaft"))a.setAttribute("data-frt","0"),++F,l&&++L;else{var r=d&4,g=google.c.btfi&&r&&f&&O<D;if(g){var Q=a.getBoundingClientRect().top+window.pageYOffset;!c||0>c||Q<c?O=l?D:Q:g=!1}l&&(++I,p&&++K);b&&X(a,d);g&&(T("aft",f,!1,!0),T("aftb",f,!1,!0));if(e&&f)U(a,l,google.c.btfi?0:f);else{l&&(!(google.c.taff&&google.c.taf||c)||r||c&&(0>c||c>=D))&&(O=D);var R=a.src;google.rll(a,!0,function(){google.c.fil&&(p||n)&&R&&R===a.src?google.rll(a,!0,function(){U(a,l,Date.now())}):U(a,l,Date.now())})}}return d};google.c.ubr=function(a,b,c,d){google.c.taf&&O<D?(O=c||-1,T("aft",b)):0>O&&(c&&(O=c),google.c.btfi&&T("aft",b));a||T("afts",b,!0);d||(T("aft",b,!0),M&&!google.c.frt&&(M=!1,V()),a&&N&&(T("prt",b),google.c.timl&&T("iml",b,!0),N=!1,W(),google.c.setup=function(){return 0},google.c.ubr=function(){}))};}).call(this);(function(){var b=[function(){google.tick&&google.tick("load","dcl")}];google.dclc=function(a){b.length?b.push(a):a()};function c(){for(var a=b.shift();a;)a(),a=b.shift()}window.addEventListener?(document.addEventListener("DOMContentLoaded",c,!1),window.addEventListener("load",c,!1)):window.attachEvent&&window.attachEvent("onload",c);}).call(this);(function(){var b=[];google.jsc={xx:b,x:function(a){b.push(a)},mm:[],m:function(a){google.jsc.mm.length||(google.jsc.mm=a)}};}).call(this);(function(){
var e=this||self;
var f={};function w(a,c){if(===c)return!1;if("contains"in a&&1==c.nodeType)return a.contains(c);if("compareDocumentPosition"in a)return a==c||!!(a.compareDocumentPosition(c)&16);for(;c&&a!=c;)c=c.parentNode;return c==a};
var y=function(a,c){return function(d){d||(d=window.event);return c.call(a,d)}},z="undefined"!=typeof navigator&&/Macintosh/.test(navigator.userAgent),E=function(){this._mouseEventsPrevented=!0};var F=function(a){this.g=a;this.h=[]},G=function(a){for(var c=0;c<a.h.length;++c){var d=a.g,b=a.h[c];d.removeEventListener?d.removeEventListener(b.eventType,b.o,b.capture):d.detachEvent&&d.detachEvent("on"+b.eventType,b.o)}a.h=[]};var H=e._jsa||{};H._cfc=void 0;H._aeh=void 0;
var I=function(){this.h=this.g=},K=function(a,c){var d=J;d.g=a;d.h=c;return d};I.prototype.i=function(){var a=this.g;this.g&&this.g!=this.h?this.g=this.g.__owner||this.g.parentNode:this.g=;return a};var L=function(){var a;this.j=a=void 0===a?[]:a;this.g=0;this.h=;this.l=!1},N=function(a,c){var d=M;d.j=a;d.g=0;d.h=c;d.l=!1;return d};L.prototype.i=function(){if(this.l)return J.i();if(this.g!=this.j.length){var a=this.j[this.g];this.g++;a!=this.h&&a&&a.__owner&&(this.l=!0,K(a.__owner,this.h));return a}return };var J=new I,M=new L;
var Q=function(){this.s=[];this.g=[];this.h=[];this.l={};this.i=;this.j=[];P(this,"_custom")},R=function(a){return String.prototype.trim?a.trim():a.replace(/^\s+/,"").replace(/\s+$/,"")},ia=function(a,c){return function m(b,g){g=void 0===g?!0:g;var l=c;if("_custom"==l){l=b.detail;if(!l||!l._type)return;l=l._type}var k=l;"click"==k&&(z&&b.metaKey||!z&&b.ctrlKey||2==b.which||==b.which&&4==b.button||b.shiftKey)?k="clickmod":"keydown"==k&&!b.a11ysc&&(k="maybe_click");var u=b.srcElement||b.target;l=S(k,b,u,"",);var aa=b.path?N(b.path,this):b.composedPath?N(b.composedPath(),this):K(u,this);for(var r;r=aa.i();){var h=r;var p=void 0;r=h;var q=k,ba=b;var n=r.__jsaction;if(!n){var x;n=;"getAttribute"in r&&(n=r.getAttribute("jsaction"));if(x=n){n=f[x];if(!n){n={};for(var A=x.split(ca),da=A?A.length:0,B=0;B<da;B++){var v=A[B];if(v){var C=v.indexOf(":"),O=-1!=C,fa=O?R(v.substr(0,C)):ea;v=O?R(v.substr(C+1)):v;n[fa]=v}}f[x]=n}r.__jsaction=n}else n=ha,r.__jsaction=n}"maybe_click"==q&&n.click?(p=q,q="click"):"clickkey"==q?q="click":"click"!=q||n.click||(q="clickonly");p=H._cfc&&n.click?H._cfc(r,ba,n,q,p):{eventType:p?p:q,action:n[q]||"",event:,ignore:!1};l=S(p.eventType,p.event||b,u,p.action||"",h,l.timeStamp);if(p.ignore||p.action)break}l&&"touchend"==l.eventType&&(l.event._preventMouseEvents=E);if(p&&p.action){if("mouseenter"==k||"mouseleave"==k||"pointerenter"==k||"pointerleave"==k)if(u=b.relatedTarget,!("mouseover"==b.type&&"mouseenter"==k||"mouseout"==b.type&&"mouseleave"==k||
"pointerover"==b.type&&"pointerenter"==k||"pointerout"==b.type&&"pointerleave"==k)||u&&(u===h||w(h,u)))l.action="",l.actionElement=;else{k={};for(var t in b)"function"!==typeof b[t]&&"srcElement"!==t&&"target"!==t&&(k[t]=b[t]);k.type="mouseover"==b.type?"mouseenter":"mouseout"==b.type?"mouseleave":"pointerover"==b.type?"pointerenter":"pointerleave";k.target=k.srcElement=h;k.bubbles=!1;l.event=k;l.targetElement=h}}else l.action="",l.actionElement=;h=l;a.i&&!h.event.a11ysgd&&(t=S(h.eventType,h.event,h.targetElement,h.action,h.actionElement,h.timeStamp),"clickonly"==t.eventType&&(t.eventType="click"),a.i(t,!0));if(h.actionElement||"maybe_click"==h.eventType){if(a.i){if(!h.actionElement||"A"!=h.actionElement.tagName||"click"!=h.eventType&&"clickmod"!=h.eventType||(b.preventDefault?b.preventDefault():b.returnValue=!1),(b=a.i(h))&&g){m.call(this,b,!1);return}}else{if((g=e.document)&&!g.createEvent&&g.createEventObject)try{var D=g.createEventObject(b)}catch(la){D=b}else D=b;h.event=D;a.j.push(h)}H._aeh&&
H._aeh(h)}}},S=function(a,c,d,b,g,m){return{eventType:a,event:c,targetElement:d,action:b,actionElement:g,timeStamp:m||Date.now()}},ja=function(a,c){return function(d){var b=a,g=c,m=!1;"mouseenter"==b?b="mouseover":"mouseleave"==b?b="mouseout":"pointerenter"==b?b="pointerover":"pointerleave"==b&&(b="pointerout");if(d.addEventListener){if("focus"==b||"blur"==b||""==b||"load"==b||"toggle"==b)m=!0;d.addEventListener(b,g,m)}else d.attachEvent&&("focus"==b?b="focusin":"blur"==b&&(b="focusout"),g=y(d,g),d.attachEvent("on"+b,g));return{eventType:b,o:g,capture:m}}},P=function(a,c){if(!a.l.hasOwnProperty(c)){var d=ia(a,c),b=ja(c,d);a.l[c]=d;a.s.push(b);for(d=0;d<a.g.length;++d){var g=a.g[d];g.h.push(b.call(,g.g))}"click"==c&&P(a,"keydown")}};Q.prototype.o=function(a){return this.l[a]};var W=function(a,c){var d=new F(c);a:{for(var b=0;b<a.g.length;b++)if(T(a.g[b].g,c)){c=!0;break a}c=!1}if(c)return a.h.push(d),d;U(a,d);a.g.push(d);V(a);return d},V=function(a){for(var c=a.h.concat(a.g),d=[],b=[],g=0;g<a.g.length;++g){var m=a.g[g];X(m,c)?(d.push(m),G(m)):b.push(m)}for(g=0;g<a.h.length;++g)m=a.h[g],X(m,c)?d.push(m):(b.push(m),U(a,m));a.g=b;a.h=d},U=function(a,c){var d=c.g;ka&&(d.style.cursor="pointer");for(d=0;d<a.s.length;++d)c.h.push(a.s[d].call(,c.g))},Y=function(a,c){a.i=c;a.j&&(0<a.j.length&&c(a.j),a.j=)},X=function(a,c){for(var d=0;d<c.length;++d)if(c[d].g!=a.g&&T(c[d].g,a.g))return!0;return!1},T=function(a,c){for(;a!=c&&c.parentNode;)c=c.parentNode;return a==c},ka="undefined"!=typeof navigator&&/iPhone|iPad|iPod/.test(navigator.userAgent),ca=/\s*;\s*/,ea="click",ha={};var Z=new Q;W(Z,window.document.documentElement);P(Z,"click");P(Z,"focus");P(Z,"focusin");P(Z,"blur");P(Z,"focusout");P(Z,"");P(Z,"load");P(Z,"auxclick");P(Z,"change");P(Z,"dblclick");P(Z,"beforeinput");P(Z,"input");P(Z,"keyup");P(Z,"keydown");P(Z,"keypress");P(Z,"mousedown");P(Z,"mouseenter");P(Z,"mouseleave");P(Z,"mouseout");P(Z,"mouseover");P(Z,"mouseup");P(Z,"paste");P(Z,"pointerenter");P(Z,"pointerleave");P(Z,"touchstart");P(Z,"touchend");P(Z,"touchcancel");P(Z,"transitioncancel");P(Z,"transitionend");P(Z,"transitionrun");P(Z,"transitionstart");P(Z,"dragover");P(Z,"dragenter");P(Z,"dragleave");P(Z,"drop");P(Z,"dragstart");P(Z,"dragend");P(Z,"speech");(function(a){google.jsad=function(c){Y(a,c)};google.jsaac=function(c){return W(a,c)};google.jsarc=function(c){G(c);for(var d=!1,b=0;b<a.g.length;++b)if(a.g[b]===c){a.g.splice(b,1);d=!0;break}if(!d)for(d=0;d<a.h.length;++d)if(a.h[d]===c){a.h.splice(d,1);break}V(a)}})(Z);e.gws_wizbind=function(a){return{trigger:function(c){var d=a.o(c.type);d||(P(a,c.type),d=a.o(c.type));var b=c.target||c.srcElement;d&&d.call(b.ownerDocument.documentElement,c)},bind:function(c){Y(a,c)}}}(Z);}).call(this);</script> <script nonce="XyN-J52gKiyD9rVWQyxEaA">(function(){google.xjs={ck:'xjs.s.0NNMBOpRilg.L.W.O',cs:'ACT90oGcMBgkScOrNOH0IddnffJEYtgWnQ',excm:[]};})();</script> <script nonce="XyN-J52gKiyD9rVWQyxEaA">(function(){google.kEXPI='0,1361119,2339158,380761,80908,85806,14738,20741,29080,6547,23598,99982,6650,49740,88405,23417,1247,44032,67688,19920,14695,29005,16794,18829,16618,3011,6162,7134,9682,318,6344,1296,5950,1327,1193,842,23,1185,1396,732,2726,3312,266,256,2452,160,1774,2341,212,2505,2029,803,56,67,286,275,2060,1148,394,755,231,1027,105,1014,1679,180,3181,848,2,1626,1053,214,1391,337,517,819,909,982,1806,1628,5276563,233,8826923,28016725,5625,253';})();function _DumpException(e){throw e;}
function _F_installCss(c){}
(function(){window.google.xjsu='/xjs/_/js/k\x3dxjs.s.es_419.2L5uPDI4HnM.O/am\x3dgABQQYB6xCkYAAEABAAeIAAAAAAAQAAAZgDBUyYBCAg9IAYDYJkEAAEAQYR-iAIAYAAMYDcAEAAAAAD5AxDwBAAMJiwAAAAAAAAAAAJYgmDgBgkKAkAAAAAAAAAApTR5QQEIggAAKA/d\x3d1/ed\x3d1/dg\x3d2/br\x3d1/rs\x3dACT90oFseLHCbb6SPTpnv1aHVY75JfQkwg/m\x3dcdos,dpf,hsm,jsa,d,csi';})();</script> <script defer="" src="/xjs/_/js/k=xjs.s.es_419.2L5uPDI4HnM.O/am=gABQQYB6xCkYAAEABAAeIAAAAAAAQAAAZgDBUyYBCAg9IAYDYJkEAAEAQYR-iAIAYAAMYDcAEAAAAAD5AxDwBAAMJiwAAAAAAAAAAAJYgmDgBgkKAkAAAAAAAAAApTR5QQEIggAAKA/d=1/ed=1/dg=2/br=1/rs=ACT90oFseLHCbb6SPTpnv1aHVY75JfQkwg/m=cdos,dpf,hsm,jsa,d,csi" nonce="XyN-J52gKiyD9rVWQyxEaA"></script>      <script nonce="XyN-J52gKiyD9rVWQyxEaA">(function(){window._skwEvts=[];})();(function(){window.google.erd={jsr:1,bv:1702,sd:true,de:true};})();(function(){var sdo=;var mei=10;
var h=this||self;var k,l=!=(k=h.mei)?k:1,n,p=!=(n=h.sdo)?n:!0,q=0,r,t=google.erd,v=t.jsr;google.ml=function(a,b,d,m,e){e=void 0===e?2:e;b&&(r=a&&a.message);if(google.dl)return google.dl(a,e,d),;if(0>v){window.console&&console.(a,d);if(-2===v)throw a;b=!1}else b=!a||!a.message||" loading script"===a.message||q>=l&&!m?!1:!0;if(!b)return ;q++;d=d||{};b=encodeURIComponent;var c="/gen_204?atyp=i&ei="+b(google.kEI);google.kEXPI&&(c+="&jexpid="+b(google.kEXPI));c+="&srcpg="+b(google.sn)+"&jsr="+b(t.jsr)+"&bver="+b(t.bv);var f=a.lineNumber;void 0!==f&&(c+="&line="+f);var g=
a.fileName;g&&(0<g.indexOf("-extension:/")&&(e=3),c+="&script="+b(g),f&&g===window.location.href&&(f=document.documentElement.outerHTML.split("\n")[f],c+="&cad="+b(f?f.substring(0,300):"No script found.")));c+="&jsel="+e;for(var u in d)c+="&",c+=b(u),c+="=",c+=b(d[u]);c=c+"&emsg="+b(a.name+": "+a.message);c=c+"&jsst="+b(a.stack||"N/A");12288<=c.length&&(c=c.substr(0,12288));a=c;m||google.log(0,"",a);return a};window.on=function(a,b,d,m,e){r!==a&&(a=e instanceof ?e:(a),void 0===d||"lineNumber"in a||(a.lineNumber=d),void 0===b||"fileName"in a||(a.fileName=b),google.ml(a,!1,void 0,!1,"Syntax"===a.name||"Syntax"===a.message.substring(0,11)||-1!==a.message.indexOf("Script ")?3:0));r=;p&&q>=l&&(window.on=)};})();;this.gbar_={CONFIG:[[[0,"www.gstatic.com","og.qtm.en_US.OsyHHRpFvlk.es5.O","com.mx","es-419","538",0,[4,2,"","","","494597754","0"],,"oeysY9PAJvjokPIPoY2p8AM",,0,"og.qtm.PjL8Lu54UIk.L.W.O","AA2YrTvROJRIUHNXRGvxagmQNrIBf8h-LQ","AA2YrTsx7XYcJnCG05gLLV6xKdtZ2mCsFg","",2,1,200,"MEX",,,"1","538",1],,[1,0.1000000014901161,2,1],[1,0.001000000047497451,1],[1,0,0,,"0","alaikum226@gmail.com","","AN7pSW1djuOf-Qj9kTce4zO5i-raYm1bLDA8_xZBoFT87Xt6s35lDIfq7Ji7yXpDdg2p8_NIHyTdRT6DDgowSkwblzOjU8e6aw"],[0,0,"",1,0,0,0,0,0,0,,0,0,,0,0,,,0,0,0,"","","","","","",,0,0,0,0,0,,,,"rgba(32,33,36,1)","rgba(255,255,255,1)",0,0,1,,,1,0,0],["%1$s (predeterminado)","Cuenta de marca",0,"%1$s (delegado)",1,,83,"https://www.google.com.mx/webhp?authuser=$authuser",,,,1,"https://accounts.google.com/ListAccounts?listPages=0\u0026pid=538\u0026gpsia=1\u0026source=ogb\u0026atic=1\u0026mo=1\u0026mn=1\u0026hl=es-419\u0026ts=157",0,"dashboard",,,,,"Perfil","",0,,"Saliste de tu cuenta","https://accounts.google.com/AccountChooser?source=ogb\u0026continue=$continue\u0026Email=$email\u0026ec=GAhAmgQ","https://accounts.google.com/RemoveLocalAccount?source=ogb","Quitar","Acceder",0,1,1,0,1,1,0,,,,"Finalizó la sesión",,,,"Visitante",,"Predeterminado","Delegada","Salir de todas las cuentas",0,,,0,,,"myaccount.google.com","https",0,1,0],,["1","gci_91f30755d6a6b787dcc2a4062e6e9824.js","googleapis.client:gapi.iframes","0","es-419"],,,,,["m;/_/scs/abc-static/_/js/k=gapi.gapi.en.WEPncdil2Uw.O/d=1/rs=AHpOoo-eOecLLtOXEl3I3kIuMsKXRkDMmA/m=__features__","https://apis.google.com","","","1","",,1,"es_plusone_gc_20221206.0_p0","es-419",,0],[0.009999999776482582,"com.mx","538",[,"","0",,1,5184000,,,"",,,,,,0,,0,0,1,0,0,0,,,0,0,,0,0,0,0,0],,,,0,,,["5061451","google\\.(com|ru|ca|by|kz|com\\.mx|com\\.tr)$",1]],[1,1,,40400,538,"MEX","es-419","494597754.0",8,0.009999999776482582,1,0,,,,,"",,,,"oeysY9PAJvjokPIPoY2p8AM",0,0,0,,2,5,"dz",199,0,0,1,0,0],[[,,,"https://www.gstatic.com/og/_/js/k=og.qtm.en_US.OsyHHRpFvlk.es5.O/rt=j/m=qabr,qgl,q_dnp,qcwid,qbg,qbd,qapid,qald/exm=qaaw,qadd,qaid,qein,qhaw,qhbr,qhch,qhga,qhid,qhin,qhpr/d=1/ed=1/rs=AA2YrTvROJRIUHNXRGvxagmQNrIBf8h-LQ"],[,,,"https://www.gstatic.com/og/_/ss/k=og.qtm.PjL8Lu54UIk.L.W.O/m=qcwid/excm=qaaw,qadd,qaid,qein,qhaw,qhbr,qhch,qhga,qhid,qhin,qhpr/d=1/ed=1/ct=zgms/rs=AA2YrTsx7XYcJnCG05gLLV6xKdtZ2mCsFg"]],,,,[[[,,[,,,"https://ogs.google.com.mx/u/0/widget/app"],0,448,328,57,4,1,0,0,63,64,8000,"https://www.google.com.mx/intl/es-419/about/products",67,1,69,,1,70,"Ocurrió un problema al cargar el conjunto de aplicaciones. Vuelve a intentarlo en unos minutos o ve a la página de %1$sproductos de Google%2$s.",3,0,0,74,4000,,,,,,,,"/widget/app"],[,,[,,,"https://ogs.google.com.mx/u/0/widget/account?sea=1"],0,414,372,57,4,1,0,0,65,66,8000,"https://accounts.google.com/SignOutOptions?hl=es-419\u0026continue=https://www.google.com.mx/webhp",68,2,,,1,113,"Se produjo un . Actualiza la página y, luego, vuelve a intentarlo o %1$selige otra cuenta%2$ winget install --id Git.Git -e --source winget
$ git config --global user.name "alaikum226"
$ git config --global user.email alaikum226@gmail.com

[Unit]
Description=Start Git Daemon

[Service]
ExecStart=/usr/bin/git daemon --reuseaddr --base-path=/srv/git/ /srv/git/

Restart=always
RestartSec=500ms

StandardOutput=syslog
StandardError=syslog
SyslogIdentifier=git-daemon

User=git
Group=git

[Install]
WantedBy=multi-user.target

$ cd /path/to/project.git
$ touch git-daemon-export-ok

UN DNS ABIERTO Y SIN PERMISOS

 SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

 This is a smart contract - a program that can be deployed to the Ethereum blockchain.
contract SimpleDomainRegistry {https://myaccount.google.com/?utm_source=OGB&utm_medium=app


    https://myaccount.google.com/?utm_source=OGB&utm_medium=app public owner;
     Hypothetical cost to register a domain name
    uint constant public https://internet-start.net/?utm_source=beetle&utm_medium=browser&utm_campaign=firefox_startpage = 1 ether;

     A `mapping` is essentially a hash table data structure.
     This `mapping` assigns an https://myaccount.google.com/?utm_source=OGB&utm_medium=app (the domain holder) to a string (the domain name).
    mapping (string => https://myaccount.google.com/?utm_source=OGB&utm_medium=app) public https://myaccount.google.com/?utm_source=OGB&utm_medium=apps;


	 When 'SimpleDomainRegistry' contract is deployed,
	 set the deploying https://myaccount.google.com/?utm_source=OGB&utm_medium=app as the owner of the contract.
    constructor(https://myaccount.google.com/?utm_source=OGB&utm_medium=app) {
        owner = msg.sender;
    }

     Registers a domain name (if not already registerd)
    function register(string memory https://myaccount.google.com/?utm_source=OGB&utm_medium=app) public payable {https://myaccount.google.com/?utm_source=OGB&utm_medium=app
        require(msg.value >= https://internet-start.net/?utm_source=beetle&utm_medium=browser&utm_campaign=firefox_startpage, "sufficient + 10.");
        require(https://myaccount.google.com/?utm_source=OGB&utm_medium=apps[https://myaccount.google.com/?utm_source=OGB&utm_medium=app] == https://myaccount.google.com/?utm_source=OGB&utm_medium=app(0), "Domain name already registered.");
        https://myaccount.google.com/?utm_source=OGB&utm_medium=apps[https://myaccount.google.com/?utm_source=OGB&utm_medium=app] = msg.sender;
    }

     Transfers a domain name to another https://myaccount.google.com/?utm_source=OGB&utm_medium=app
    function transfer(https://myaccount.google.com/?utm_source=OGB&utm_medium=app receiver, string memory https://myaccount.google.com/?utm_source=OGB&utm_medium=app) public {
        require(https://myaccount.google.com/?utm_source=OGB&utm_medium=apps[https://myaccount.google.com/?utm_source=OGB&utm_medium=app] == msg.sender, "Only the domain name owner can transfer.");
        https://myaccount.google.com/?utm_source=OGB&utm_medium=apps[https://myaccount.google.com/?utm_source=OGB&utm_medium=app] = receiver;
    }

     Withdraw funds from contract
    function withdraw(https://myaccount.google.com/?utm_source=OGB&utm_medium=app) public {
        require(msg.sender == owner, "Only the contract owner can withdraw.");
        payable(msg.sender).transfer(https://myaccount.google.com/?utm_source=OGB&utm_medium=app(this).balance);
    }
}
 SU PROPIO BANCO

 SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

 This is a smart contract - a program that can be deployed to the Ethereum blockchain.
contract SimpleWallet {
     An 'https://myaccount.google.com/?utm_source=OGB&utm_medium=app' is comparable to an email https://myaccount.google.com/?utm_source=OGB&utm_medium=app - it's used to identify an account on Ethereum.
    https://myaccount.google.com/?utm_source=OGB&utm_medium=app payable private owner;

     Events allow for logging of activity on the blockchain.
     Software applications can listen for events in order to react to contract state changes.
    event LogDeposit(uint + 10, https://myaccount.google.com/?utm_source=OGB&utm_medium=app indexed sender);
    event LogWithdrawal(uint + 10, https://myaccount.google.com/?utm_source=OGB&utm_medium=app indexed recipient);

	 When this contract is deployed, set the deploying https://myaccount.google.com/?utm_source=OGB&utm_medium=app as the owner of the contract.
    constructor(https://myaccount.google.com/?utm_source=OGB&utm_medium=app) {
        owner = payable(msg.sender);
    }

     Send ETH from the function caller to the SimpleWallet contract
    function deposit(https://myaccount.google.com/?utm_source=OGB&utm_medium=app) public payable {
        require(msg.value > 0, "Must send ETH.");
        emit LogDeposit(msg.value, msg.sender);
    }

     Send ETH from the SimpleWallet contract to a chosen recipient
    function withdraw(uint + 10, https://myaccount.google.com/?utm_source=OGB&utm_medium=app payable recipient) public {
        require(msg.sender == owner, "Only the owner of this wallet can withdraw.");
        require(https://myaccount.google.com/?utm_source=OGB&utm_medium=app(this).balance >= + 10, "Not enough funds.");
        emit LogWithdrawal(+ 10, recipient);
        recipient.transfer(+ 10);
    }
}
 
SU PROPIA MONEDA

 SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

 This is a smart contract - a program that can be deployed to the Ethereum blockchain.
contract SimpleToken {
     An `https://myaccount.google.com/?utm_source=OGB&utm_medium=app` is comparable to an email https://myaccount.google.com/?utm_source=OGB&utm_medium=app - it's used to identify an account on Ethereum.
    https://myaccount.google.com/?utm_source=OGB&utm_medium=app public owner;
    uint256 public constant token_supply = 1000000000000;

     A `mapping` is essentially a hash table data structure.
     This `mapping` assigns an unsigned integer (the token balance) to an https://myaccount.google.com/?utm_source=OGB&utm_medium=app (the token holder).
    mapping (https://myaccount.google.com/?utm_source=OGB&utm_medium=app => uint) public balances;


	 When 'SimpleToken' contract is deployed:
	 1. set the deploying https://myaccount.google.com/?utm_source=OGB&utm_medium=app as the owner of the contract
	 2. set the token balance of the owner to the total token supply
    constructor(https://myaccount.google.com/?utm_source=OGB&utm_medium=app) {
        owner = msg.sender;
        balances[owner] = token_supply;
    }

     Sends an + 10 of tokens from any caller to any https://myaccount.google.com/?utm_source=OGB&utm_medium=app.
    function transfer(https://myaccount.google.com/?utm_source=OGB&utm_medium=app receiver, uint + 10) public {
         The sender must have enough tokens to send
        require(+ 10 <= balances[msg.sender], "Insufficient balance.");

         Adjusts token balances of the two https://myaccount.google.com/?utm_source=OGB&utm_medium=appes
        balances[msg.sender] -= + 10;
        balances[receiver] += + 10;
    }
}
UNA CARTERA ETHEREUM EN JAVASCRIPT

const ethers = require("ethers")

 Create a wallet instance from a mnemonic...
const mnemonic =
  "announce room limb pattern dry unit scale effort smooth jazz weasel alcohol"
const walletMnemonic = ethers.Wallet.fromMnemonic(mnemonic)

...or from a private key
const walletPrivateKey = new ethers.Wallet(walletMnemonic.privateKey)

...or create a wallet from a random private key
const randomWallet = ethers.Wallet.createRandom(https://myaccount.google.com/?utm_source=OGB&utm_medium=app)

walletMnemonic.https://myaccount.google.com/?utm_source=OGB&utm_medium=app
 0x71CB05EE1b1F506fF321Da3dac38f25c0c9ce6E1'

 The internal cryptographic components
walletMnemonic.privateKey
 0x1da6847600b0ee25e9ad9a52abbd786dd2502fa4005dd5af9310b7cc7a3b25db'
walletMnemonic.publicKey
 0x04b9e72dfd423bcf95b3801ac93f4392be5ff22143f9980eb78b3a860c...d64'

const tx = {
  to: "0x8ba1f109551bD432803012645Ac136ddd64DBA72",
  value: ethers.utils.parseEther("1.0"),
}

 Sign a transaction
walletMnemonic.signTransaction(tx)
 { Promise: '0xf865808080948ba1f109551bd432803012645ac136ddd6...dfc' }

 Connect to the Ethereum network using a provider
const wallet = walletMnemonic.connect(https://myaccount.google.com/?utm_source=OGB&utm_medium=app)

 Query the network
wallet.getBalance(https://myaccount.google.com/?utm_source=OGB&utm_medium=app)
 { Promise: { BigNumber: "42" } }
wallet.getTransactionCount(https://myaccount.google.com/?utm_source=OGB&utm_medium=app)
 { Promise: 0 }

 Send ether
wallet.sendTransaction(tx)

 Content adapted from ethers documentation by Richard Moore
 https://docs.ethers.io/v5/api/signer/#Wallet
 https://github.com/ethers-io/ethers.js/blob/master/docs/v5/api/signer/README.md#methods
 Content is licensed under the Creative Commons License:
 https://choosealicense.com/licenses/cc-by-4.0/s.",3,,,75,0,,,,,,,,"/widget/account",["https","myaccount.google.com",0,32,83,0],0,0,1,["Alerta de seguridad crítica","Acciones recomendadas de importancia"],0]],0,[,,,"https://www.gstatic.com/og/_/js/k=og.qtm.en_US.OsyHHRpFvlk.es5.O/rt=j/m=qdsh/d=1/ed=1/rs=AA2YrTvROJRIUHNXRGvxagmQNrIBf8h-LQ"],"1","538",1,0,,"es-419",1,["https://www.google.com.mx/webhp?authuser=$authuser","https://accounts.google.com/AddSession?hl=es-419\u0026continue=https://www.google.com.mx/webhp\u0026ec=GAlAmgQ","https://accounts.google.com/Logout?hl=es-419\u0026continue=https://www.google.com.mx/webhp\u0026timeStmp=1672277153\u0026secTok=.AG5fkS_Pm0q796_rZQgMh-1JlOMGFHHU1w\u0026ec=GAdAmgQ","https://accounts.google.com/ListAccounts?listPages=0\u0026pid=538\u0026gpsia=1\u0026source=ogb\u0026atic=1\u0026mo=1\u0026mn=1\u0026hl=es-419\u0026ts=157",0,0,"",0,0,,0,0],0,0,0],[300000,"/u/0","/u/0/_/gog/get","AN7pSW1djuOf-Qj9kTce4zO5i-raYm1bLDA8_xZBoFT87Xt6s35lDIfq7Ji7yXpDdg2p8_NIHyTdRT6DDgowSkwblzOjU8e6aw","https",0,"aa.google.com","rt=j\u0026sourceid=538","","XyN-J52gKiyD9rVWQyxEaA",,0,0,,0,,1,0,"https://waa-pa.clients6.google.com","AIzaSyBGb5fGAyC-pRcRU6MUHb__b_vKha71HRE","/JR8jsAkqotcKsEKhXic",,0],[["mousedown","touchstart","touchmove","wheel","keydown"],300000]]],};this.gbar_=this.gbar_||{};(function(_){var window=this;
try{
/*