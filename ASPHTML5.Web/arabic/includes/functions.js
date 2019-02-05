// JavaScript Document

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
function MM_showHideLayers() { //v6.0
  var i,p,v,obj,args=MM_showHideLayers.arguments;
  for (i=0; i<(args.length-2); i+=3) if ((obj=MM_findObj(args[i]))!=null) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v=='hide')?'hidden':v; }
    obj.visibility=v; }
}
function HideAll(){
MM_showHideLayers('HideAll','','hide','dropSubMenu1','','hide','dropSubMenu2','','hide','dropSubMenu3','','hide','dropSubMenu4','','hide','dropSubMenu5','','hide','dropSubMenu6','','hide','dropSubMenu7','','hide','dropSubMenu8','','hide');


}

function P7_Snap() { //v2.63 by PVII
 var x,y,ox,bx,oy,p,tx,a,b,k,d,da,e,el,tw,q0,xx,yy,w1,pa='px',args=P7_Snap.arguments;a=parseInt(a);
 if(document.layers||window.opera){pa='';}for(k=0;k<(args.length);k+=4){
 if((g=MM_findObj(args[k]))!=null){if((el=MM_findObj(args[k+1]))!=null){
 a=parseInt(args[k+2]);b=parseInt(args[k+3]);x=0;y=0;ox=0;oy=0;p="";tx=1;
 da="document.all['"+args[k]+"']";if(document.getElementById){
 d="document.getElementsByName('"+args[k]+"')[0]";if(!eval(d)){
 d="document.getElementById('"+args[k]+"')";if(!eval(d)){d=da;}}
 }else if(document.all){d=da;}if(document.all||document.getElementById){while(tx==1){
 p+=".offsetParent";if(eval(d+p)){x+=parseInt(eval(d+p+".offsetLeft"));y+=parseInt(eval(d+p+".offsetTop"));
 }else{tx=0;}}ox=parseInt(g.offsetLeft);oy=parseInt(g.offsetTop);tw=x+ox+y+oy;
 if(tw==0||(navigator.appVersion.indexOf("MSIE 4")>-1&&navigator.appVersion.indexOf("Mac")>-1)){
  ox=0;oy=0;if(g.style.left){x=parseInt(g.style.left);y=parseInt(g.style.top);}else{
  w1=parseInt(el.style.width);bx=(a<0)?-5-w1:-10;a=(Math.abs(a)<1000)?0:a;b=(Math.abs(b)<1000)?0:b;
  x=document.body.scrollLeft+event.clientX+bx;y=document.body.scrollTop+event.clientY;}}
 }else if(document.layers){x=g.x;y=g.y;q0=document.layers,dd="";for(var s=0;s<q0.length;s++){
  dd='document.'+q0[s].name;if(eval(dd+'.document.'+args[k])){x+=eval(dd+'.left');y+=eval(dd+'.top');
  break;}}}e=(document.layers)?el:el.style;xx=parseInt(x+ox+a),yy=parseInt(y+oy+b);
 if(navigator.appVersion.indexOf("MSIE 5")>-1 && navigator.appVersion.indexOf("Mac")>-1){
  xx+=parseInt(document.body.leftMargin);yy+=parseInt(document.body.topMargin);}
 e.left=xx+pa;e.top=yy+pa;}}}
}

// Function to activate / de-activate tabs in homepage begin
var oldDivId	= "";

function ShowHideTabs(id)
{
	if (oldDivId != id) {
		var Div	= document.getElementById('div' + id);
		var TD	= document.getElementById(id);
		
		if (oldDivId) {
			var oldDiv	= document.getElementById('div' + oldDivId);
			var oldTD	= document.getElementById(oldDivId);
			
			oldDiv.style.display	= "none";
			oldTD.className			= "tab";
		}
		
		Div.style.display	= "";
		TD.className		= "tabon";
				
		oldDivId			= id;
	}
}
// Function to activate / de-activate tabs in homepage end

// function to collapse newsletter begin
//Animated Collapsible DIV- Author: Dynamic Drive (http://www.dynamicdrive.com)
//Last official updated June 27th, 07'. Added ability for a DIV to be initially expanded.
//updated Aug 8th, 2007 - unofficial collapse previous option - jscheuer1 in http://www.dynamicdrive.com/forums

var collapseprevious=true; //set to true to collapse previously opened div, false to allow multiple div's open
var uniquepageid=window.location.href.replace("http://"+window.location.hostname, "").replace(/^\//, "") //get current page path and name, used to uniquely identify this page for persistence feature

function animatedcollapse(divId, animatetime, persistexpand, initstate){
	if(!animatedcollapse.ar)
		animatedcollapse.ar=[];
	animatedcollapse.ar[animatedcollapse.ar.length]=this;
	this.divId=divId;
	this.divObj=document.getElementById(divId)
	this.divObj.style.overflow="hidden"
	this.timelength=animatetime
	this.initstate=(typeof initstate!="undefined" && initstate=="block")? "block" : "contract"
	this.isExpanded=animatedcollapse.getCookie(uniquepageid+"-"+divId) //"yes" or "no", based on cookie value
	this.contentheight=parseInt(this.divObj.style.height)
	var thisobj=this
	if (isNaN(this.contentheight)){ //if no CSS "height" attribute explicitly defined, get DIV's height on window.load
		animatedcollapse.dotask(window, function(){thisobj._getheight(persistexpand)}, "load")
		if (!persistexpand && this.initstate=="contract" || persistexpand && this.isExpanded!="yes") //Hide DIV (unless div should be expanded by default, OR persistence is enabled and this DIV should be expanded)
			this.divObj.style.visibility="hidden" //hide content (versus collapse) until we can get its height
	}
	else if (!persistexpand && this.initstate=="contract" || persistexpand && this.isExpanded!="yes") //Hide DIV (unless div should be expanded by default, OR persistence is enabled and this DIV should be expanded)
		this.divObj.style.height=0 //just collapse content if CSS "height" attribute available
	if (persistexpand)
		animatedcollapse.dotask(window, function(){animatedcollapse.setCookie(uniquepageid+"-"+thisobj.divId, thisobj.isExpanded)}, "unload")
}

animatedcollapse.prototype._getheight=function(persistexpand){
	this.contentheight=this.divObj.offsetHeight
	if (!persistexpand && this.initstate=="contract" || persistexpand && this.isExpanded!="yes"){ //Hide DIV (unless div should be expanded by default, OR persistence is enabled and this DIV should be expanded)
		this.divObj.style.height=0 //collapse content
		this.divObj.style.visibility="visible"
	}
	else //else if persistence is enabled AND this content should be expanded, define its CSS height value so slideup() has something to work with
		this.divObj.style.height=this.contentheight+"px"
}


animatedcollapse.prototype._slideengine=function(direction){
	var elapsed=new Date().getTime()-this.startTime //get time animation has run
	var thisobj=this
	if (elapsed<this.timelength){ //if time run is less than specified length
		var distancepercent=(direction=="down")? animatedcollapse.curveincrement(elapsed/this.timelength) : 1-animatedcollapse.curveincrement(elapsed/this.timelength)
	this.divObj.style.height=distancepercent * this.contentheight +"px"
	this.runtimer=setTimeout(function(){thisobj._slideengine(direction)}, 10)
	}
	else{ //if animation finished
		this.divObj.style.height=(direction=="down")? this.contentheight+"px" : 0
		this.isExpanded=(direction=="down")? "yes" : "no" //remember whether content is expanded or not
		this.runtimer=null
	}
}


animatedcollapse.prototype.slidedown=function(){
	if (collapseprevious)
		for (var i = 0, a=animatedcollapse.ar; i < a.length; i++)
			if(a[i]!=this)
				a[i].slideup();
	if (typeof this.runtimer=="undefined" || this.runtimer==null){ //if animation isn't already running or has stopped running
		if (isNaN(this.contentheight)) //if content height not available yet (until window.onload)
			alert("Please wait until document has fully loaded then click again")
		else if (parseInt(this.divObj.style.height)==0){ //if content is collapsed
			this.startTime=new Date().getTime() //Set animation start time
			this._slideengine("down")
		}
	}
}

animatedcollapse.prototype.slideup=function(){
	if (typeof this.runtimer=="undefined" || this.runtimer==null){ //if animation isn't already running or has stopped running
		if (isNaN(this.contentheight)) //if content height not available yet (until window.onload)
			alert("Please wait until document has fully loaded then click again")
		else if (parseInt(this.divObj.style.height)==this.contentheight){ //if content is expanded
			this.startTime=new Date().getTime()
			this._slideengine("up")
		}
	}
}

animatedcollapse.prototype.slideit=function(){
	if (isNaN(this.contentheight)) //if content height not available yet (until window.onload)
		alert("Please wait until document has fully loaded then click again")
	else if (parseInt(this.divObj.style.height)==0)
		this.slidedown()
	else if (parseInt(this.divObj.style.height)==this.contentheight)
		this.slideup()
}

// -------------------------------------------------------------------
// A few utility functions below:
// -------------------------------------------------------------------

animatedcollapse.curveincrement=function(percent){
	return (1-Math.cos(percent*Math.PI)) / 2 //return cos curve based value from a percentage input
}


animatedcollapse.dotask=function(target, functionref, tasktype){ //assign a function to execute to an event handler (ie: onunload)
	var tasktype=(window.addEventListener)? tasktype : "on"+tasktype
	if (target.addEventListener)
		target.addEventListener(tasktype, functionref, false)
	else if (target.attachEvent)
		target.attachEvent(tasktype, functionref)
}

animatedcollapse.getCookie=function(Name){ 
	var re=new RegExp(Name+"=[^;]+", "i"); //construct RE to search for target name/value pair
	if (document.cookie.match(re)) //if cookie found
		return document.cookie.match(re)[0].split("=")[1] //return its value
	return ""
}

animatedcollapse.setCookie=function(name, value, days){
	if (typeof days!="undefined"){ //if set persistent cookie
		var expireDate = new Date()
		var expstring=expireDate.setDate(expireDate.getDate()+days)
		document.cookie = name+"="+value+"; expires="+expireDate.toGMTString()
	}
	else //else if this is a session only cookie
		document.cookie = name+"="+value
}
// function to collapse newsletter end


function initScrollLayer() {
	// arguments: id of layer containing scrolling layers (clipped layer), id of layer to scroll, 
	// if horizontal scrolling, id of element containing scrolling content (table?)
	var wndo = new dw_scrollObj('wn', 'lyr1', 't1');
	
	// arguments: dragBar id, track id, axis ("v" or "h"), x offset, y offset
	// (x/y offsets of dragBar in track)
	wndo.setUpScrollbar("dragBar", "track", "h", 1, 1);
	
	// Read instructions if your scrolling layers are inside tables 
}

function initScrollLayer2() {
  var wndo = new dw_scrollObj('wn', 'lyr1');
  
  wndo.setUpScrollbar("dragBar", "track", "v", 1, 1);
  dw_scrollObj.GeckoTableBugFix('wn');
}

/*image rotator begin */
function theRotator() {
    //Set the opacity of all images to 0
    $('div#rotator ul li').css({ opacity: 0.0 });

    //Get the first image and display it (gets set to full opacity)
    $('div#rotator ul li:first').css({ opacity: 1.0 });

    //Call the rotator function to run the slideshow, 6000 = change to next image after 6 seconds
    setInterval('rotate()', 10000);

}

function rotate() {
    //Get the first image
    var current = ($('div#rotator ul li.show') ? $('div#rotator ul li.show') : $('div#rotator ul li:first'));
    //Get next image, when it reaches the end, rotate it back to the first image
    var next = ((current.next().length) ? ((current.next().hasClass('show')) ? $('div#rotator ul li:first') : current.next()) : $('div#rotator ul li:first'));

    //Set the fade in effect for the next image, the show class has higher z-index
    next.css({ opacity: 0.0 })
 .addClass('show')
 .animate({ opacity: 1.0 }, 1000);
    //Hide the current image
    current.animate({ opacity: 0.0 }, 1000)
 .removeClass('show');

};

/*image rotator end*/