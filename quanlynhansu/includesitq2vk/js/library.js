function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.0
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && document.getElementById) x=document.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-------------------------------------------------------------
// Select all the checkboxes (Hotmail style)
//-------------------------------------------------------------
function SelectAllCheckboxes(theBox){

	xState=theBox.checked;    
    elm=theBox.form.elements;
    for(i=0;i<elm.length;i++)
    if(elm[i].type=="checkbox" && elm[i].id!=theBox.id)
        {
        //elm[i].click();
        if(elm[i].checked!=xState)
        elm[i].click();
        //elm[i].checked=xState;
        }
}
//Open Image
var fBrw=(navigator.userAgent.indexOf('MSIE')!= -1 && navigator.userAgent.indexOf('Windows')!= -1);



function openNewImage(file)
{	 	
    picfile = new Image(); 
    picfile.src =(file);           
    width=picfile.width;
    height=picfile.height;
            
	//location.replace('http://localhost:8090/news/images/news/duongsat.jpg');
	//window.open('/news/viewpicture.aspx?filename=duongsat.jpg');
	//window.open(file,'showpicture', 'toolbar=no,location=no ,status=no,menubar=no,scrollbars=no,resizable=no,copyhistory=no,topmargin=0,leftmargin=0,width='+width+',height='+height);
	
	winDef = 'status=no,resizable=no,scrollbars=no,toolbar=no,location=no,fullscreen=no,titlebar=yes,height='.concat(height).concat(',').concat('width=').concat(width).concat(',');
	winDef = winDef.concat('top=').concat((screen.height - height)/2).concat(',');
	winDef = winDef.concat('left=').concat((screen.width - width)/2);
	newwin = open('', '_blank', winDef);

	newwin.document.writeln('<body topmargin="0" leftmargin="0" marginheight="0" marginwidth="0">');
	newwin.document.writeln('<a href="" onClick="window.close(); return false;"><img src="', file, '" alt="', (fBrw) ? '&#272;&#243;ng l&#7841;i' : 'Dong lai', '" border=0></a>');
	newwin.document.writeln('</body>');

}

function openImage(file,width,height)
{

	//location.replace('http://localhost:8090/news/images/news/duongsat.jpg');
	//window.open('/news/viewpicture.aspx?filename=duongsat.jpg');
	//window.open(file,'showpicture', 'toolbar=no,location=no ,status=no,menubar=no,scrollbars=no,resizable=no,copyhistory=no,topmargin=0,leftmargin=0,width='+width+',height='+height);
	winDef = 'status=no,resizable=no,scrollbars=no,toolbar=no,location=no,fullscreen=no,titlebar=yes,height='.concat(height).concat(',').concat('width=').concat(width).concat(',');
	winDef = winDef.concat('top=').concat((screen.height - height)/2).concat(',');
	winDef = winDef.concat('left=').concat((screen.width - width)/2);
	newwin = open('', '_blank', winDef);

	newwin.document.writeln('<body topmargin="0" leftmargin="0" marginheight="0" marginwidth="0">');
	newwin.document.writeln('<a href="" onClick="window.close(); return false;"><img src="', file, '" alt="', (fBrw) ? '&#272;&#243;ng l&#7841;i' : 'Dong lai', '" border=0></a>');
	newwin.document.writeln('</body>');

}

function openfile(file,width,height)
{

	//location.replace('http://localhost:8090/news/images/news/duongsat.jpg');
	//window.open('/news/viewpicture.aspx?filename=duongsat.jpg');
	//window.open(file,'showpicture', 'toolbar=no,location=no ,status=no,menubar=no,scrollbars=no,resizable=no,copyhistory=no,topmargin=0,leftmargin=0,width='+width+',height='+height);
	winDef = 'status=no,resizable=no,scrollbars=no,toolbar=no,location=no,fullscreen=no,titlebar=yes,height='.concat(height).concat(',').concat('width=').concat(width).concat(',');
	winDef = winDef.concat('top=').concat((screen.height - height)/2).concat(',');
	winDef = winDef.concat('left=').concat((screen.width - width)/2);
	newwin = open(file, '_blank', winDef);

}

/*
 * This is the function that actually highlights a text string by
 * adding HTML tags before and after all occurrences of the search
 * term. You can pass your own tags if you'd like, or if the
 * highlightStartTag or highlightEndTag parameters are omitted or
 * are empty strings then the default <font> tags will be used.
 */
function doHighlight(bodyText, searchTerm, highlightStartTag, highlightEndTag) 
{
  // the highlightStartTag and highlightEndTag parameters are optional
  if ((!highlightStartTag) || (!highlightEndTag)) {
    highlightStartTag = "<font style='color:blue; background-color:yellow;'>";
    highlightEndTag = "</font>";
  }
  
  // find all occurences of the search term in the given text,
  // and add some "highlight" tags to them (we're not using a
  // regular expression search, because we want to filter out
  // matches that occur within HTML tags and script blocks, so
  // we have to do a little extra validation)
  var newText = "";
  var i = -1;
  var lcSearchTerm = searchTerm.toLowerCase();
  var lcBodyText = bodyText.toLowerCase();
    
  while (bodyText.length > 0) {
    i = lcBodyText.indexOf(lcSearchTerm, i+1);
    if (i < 0) {
      newText += bodyText;
      bodyText = "";
    } else {
      // skip anything inside an HTML tag
      if (bodyText.lastIndexOf(">", i) >= bodyText.lastIndexOf("<", i)) {
        // skip anything inside a <script> block
        if (lcBodyText.lastIndexOf("/script>", i) >= lcBodyText.lastIndexOf("<script", i)) {
          newText += bodyText.substring(0, i) + highlightStartTag + bodyText.substr(i, searchTerm.length) + highlightEndTag;
          bodyText = bodyText.substr(i + searchTerm.length);
          lcBodyText = bodyText.toLowerCase();
          i = -1;
        }
      }
    }
  }
  
  return newText;
}


/*
 * This is sort of a wrapper function to the doHighlight function.
 * It takes the searchText that you pass, optionally splits it into
 * separate words, and transforms the text on the current web page.
 * Only the "searchText" parameter is required; all other parameters
 * are optional and can be omitted.
 */
function highlightSearchTerms(searchText, treatAsPhrase, warnOnFailure, highlightStartTag, highlightEndTag)
{
  // if the treatAsPhrase parameter is true, then we should search for 
  // the entire phrase that was entered; otherwise, we will split the
  // search string so that each word is searched for and highlighted
  // individually
  if (treatAsPhrase) {
    searchArray = [searchText];
  } else {
    searchArray = searchText.split(" ");
  }
  
  if (!document.body || typeof(document.body.innerHTML) == "undefined") {
    if (warnOnFailure) {
      alert("Sorry, for some reason the text of this page is unavailable. Searching will not work.");
    }
    return false;
  }
  
  var bodyText = document.body.innerHTML;
  for (var i = 0; i < searchArray.length; i++) {
    bodyText = doHighlight(bodyText, searchArray[i], highlightStartTag, highlightEndTag);
  }
  
  document.body.innerHTML = bodyText;
  return true;
}


/*
 * This displays a dialog box that allows a user to enter their own
 * search terms to highlight on the page, and then passes the search
 * text or phrase to the highlightSearchTerms function. All parameters
 * are optional.
 */
function searchPrompt(defaultText, treatAsPhrase, textColor, bgColor)
{
  // This function prompts the user for any words that should
  // be highlighted on this web page
  if (!defaultText) {
    defaultText = "";
  }
  
  // we can optionally use our own highlight tag values
  if ((!textColor) || (!bgColor)) {
    highlightStartTag = "";
    highlightEndTag = "";
  } else {
    highlightStartTag = "<font style='color:" + textColor + "; background-color:" + bgColor + ";'>";
    highlightEndTag = "</font>";
  }
  
  if (treatAsPhrase) {
    promptText = "Please enter the phrase you'd like to search for:";
  } else {
    promptText = "Please enter the words you'd like to search for, separated by spaces:";
  }
  
  searchText = prompt(promptText, defaultText);

  if (!searchText)  {
    alert("No search terms were entered. Exiting function.");
    return false;
  }
  
  return highlightSearchTerms(searchText, treatAsPhrase, true, highlightStartTag, highlightEndTag);
}


/*
 * This function takes a referer/referrer string and parses it
 * to determine if it contains any search terms. If it does, the
 * search terms are passed to the highlightSearchTerms function
 * so they can be highlighted on the current page.
 */
function highlightGoogleSearchTerms(referrer)
{
  // This function has only been very lightly tested against
  // typical Google search URLs. If you wanted the Google search
  // terms to be automatically highlighted on a page, you could
  // call the function in the onload event of your <body> tag, 
  // like this:
  //   <body onload='highlightGoogleSearchTerms(document.referrer);'>
  
  //var referrer = document.referrer;
  if (!referrer) {
    return false;
  }
  
  var queryPrefix = "q=";
  var startPos = referrer.toLowerCase().indexOf(queryPrefix);
  if ((startPos < 0) || (startPos + queryPrefix.length == referrer.length)) {
    return false;
  }
  
  var endPos = referrer.indexOf("&", startPos);
  if (endPos < 0) {
    endPos = referrer.length;
  }
  
  var queryString = referrer.substring(startPos + queryPrefix.length, endPos);
  // fix the space characters
  queryString = queryString.replace(/%20/gi, " ");
  queryString = queryString.replace(/\+/gi, " ");
  // remove the quotes (if you're really creative, you could search for the
  // terms within the quotes as phrases, and everything else as single terms)
  queryString = queryString.replace(/%22/gi, "");
  queryString = queryString.replace(/\"/gi, "");
  
  return highlightSearchTerms(queryString, false);
}


/*
 * This function is just an easy way to test the highlightGoogleSearchTerms
 * function.
 */
function testHighlightGoogleSearchTerms()
{
  var referrerString = "http://www.google.com/search?q=javascript%20highlight&start=0";
  referrerString = prompt("Test the following referrer string:", referrerString);
  return highlightGoogleSearchTerms(referrerString);
}


/* --- BoxOver ---
/* --- v 2.1 17th June 2006
By Oliver Bryant with help of Matthew Tagg
http://boxover.swazz.org */

if (typeof document.attachEvent!='undefined') {
   window.attachEvent('onload',init);
   document.attachEvent('onmousemove',moveMouse);
   document.attachEvent('onclick',checkMove); }
else {
   window.addEventListener('load',init,false);
   document.addEventListener('mousemove',moveMouse,false);
   document.addEventListener('click',checkMove,false);
}

var oDv=document.createElement("div");
var dvHdr=document.createElement("div");
var dvBdy=document.createElement("div");
var windowlock,boxMove,fixposx,fixposy,lockX,lockY,fixx,fixy,ox,oy,boxLeft,boxRight,boxTop,boxBottom,evt,mouseX,mouseY,boxOpen,totalScrollTop,totalScrollLeft;
boxOpen=false;
ox=10;
oy=10;
lockX=0;
lockY=0;

function init() {
	oDv.appendChild(dvHdr);
	oDv.appendChild(dvBdy);
	oDv.style.position="absolute";
	oDv.style.visibility='hidden';
	document.body.appendChild(oDv);	
}

function defHdrStyle() {
	dvHdr.innerHTML='<img  style="vertical-align:middle"  src="info.gif">&nbsp;&nbsp;'+dvHdr.innerHTML;
	dvHdr.style.fontWeight='bold';
	dvHdr.style.width='150px';
	dvHdr.style.fontFamily='arial';
	dvHdr.style.border='1px solid #A5CFE9';
	dvHdr.style.padding='3';
	dvHdr.style.fontSize='11';
	dvHdr.style.color='#4B7A98';
	dvHdr.style.background='#D5EBF9';
	dvHdr.style.filter='alpha(opacity=85)'; // IE
	dvHdr.style.opacity='0.85'; // FF
}

function defBdyStyle() {
	dvBdy.style.borderBottom='1px solid #A5CFE9';
	dvBdy.style.borderLeft='1px solid #A5CFE9';
	dvBdy.style.borderRight='1px solid #A5CFE9';
	dvBdy.style.width='150px';
	dvBdy.style.fontFamily='arial';
	dvBdy.style.fontSize='11';
	dvBdy.style.padding='3';
	dvBdy.style.color='#1B4966';
	dvBdy.style.background='#FFFFFF';
	dvBdy.style.filter='alpha(opacity=85)'; // IE
	dvBdy.style.opacity='0.85'; // FF
}

function checkElemBO(txt) {
if (!txt || typeof(txt) != 'string') return false;
if ((txt.indexOf('header')>-1)&&(txt.indexOf('body')>-1)&&(txt.indexOf('[')>-1)&&(txt.indexOf('[')>-1)) 
   return true;
else
   return false;
}

function scanBO(curNode) {
	  if (checkElemBO(curNode.title)) {
         curNode.boHDR=getParam('header',curNode.title);
         curNode.boBDY=getParam('body',curNode.title);
			curNode.boCSSBDY=getParam('cssbody',curNode.title);			
			curNode.boCSSHDR=getParam('cssheader',curNode.title);
			curNode.IEbugfix=(getParam('hideselects',curNode.title)=='on')?true:false;
			curNode.fixX=parseInt(getParam('fixedrelx',curNode.title));
			curNode.fixY=parseInt(getParam('fixedrely',curNode.title));
			curNode.absX=parseInt(getParam('fixedabsx',curNode.title));
			curNode.absY=parseInt(getParam('fixedabsy',curNode.title));
			curNode.offY=(getParam('offsety',curNode.title)!='')?parseInt(getParam('offsety',curNode.title)):10;
			curNode.offX=(getParam('offsetx',curNode.title)!='')?parseInt(getParam('offsetx',curNode.title)):10;
			curNode.fade=(getParam('fade',curNode.title)=='on')?true:false;
			curNode.fadespeed=(getParam('fadespeed',curNode.title)!='')?getParam('fadespeed',curNode.title):0.04;
			curNode.delay=(getParam('delay',curNode.title)!='')?parseInt(getParam('delay',curNode.title)):0;
			if (getParam('requireclick',curNode.title)=='on') {
				curNode.requireclick=true;
				document.all?curNode.attachEvent('onclick',showHideBox):curNode.addEventListener('click',showHideBox,false);
				document.all?curNode.attachEvent('onmouseover',hideBox):curNode.addEventListener('mouseover',hideBox,false);
			}
			else {// Note : if requireclick is on the stop clicks are ignored   			
   			if (getParam('doubleclickstop',curNode.title)!='off') {
   				document.all?curNode.attachEvent('ondblclick',pauseBox):curNode.addEventListener('dblclick',pauseBox,false);
   			}	
   			if (getParam('singleclickstop',curNode.title)=='on') {
   				document.all?curNode.attachEvent('onclick',pauseBox):curNode.addEventListener('click',pauseBox,false);
   			}
   		}
			curNode.windowLock=getParam('windowlock',curNode.title).toLowerCase()=='off'?false:true;
			curNode.title='';
			curNode.hasbox=1;
	   }
	   else
	      curNode.hasbox=2;   
}


function getParam(param,list) {
	var reg = new RegExp('([^a-zA-Z]' + param + '|^' + param + ')\\s*=\\s*\\[\\s*(((\\[\\[)|(\\]\\])|([^\\]\\[]))*)\\s*\\]');
	var res = reg.exec(list);
	var returnvar;
	if(res)
		return res[2].replace('[[','[').replace(']]',']');
	else
		return '';
}

function Left(elem){	
	var x=0;
	if (elem.calcLeft)
		return elem.calcLeft;
	var oElem=elem;
	while(elem){
		 if ((elem.currentStyle)&& (!isNaN(parseInt(elem.currentStyle.borderLeftWidth)))&&(x!=0))
		 	x+=parseInt(elem.currentStyle.borderLeftWidth);
		 x+=elem.offsetLeft;
		 elem=elem.offsetParent;
	  } 
	oElem.calcLeft=x;
	return x;
	}

function Top(elem){
	 var x=0;
	 if (elem.calcTop)
	 	return elem.calcTop;
	 var oElem=elem;
	 while(elem){		
	 	 if ((elem.currentStyle)&& (!isNaN(parseInt(elem.currentStyle.borderTopWidth)))&&(x!=0))
		 	x+=parseInt(elem.currentStyle.borderTopWidth); 
		 x+=elem.offsetTop;
	         elem=elem.offsetParent;
 	 } 
 	 oElem.calcTop=x;
 	 return x;
 	 
}

var ah,ab;
function applyStyles() {
	if(ab)
		oDv.removeChild(dvBdy);
	if (ah)
		oDv.removeChild(dvHdr);
	dvHdr=document.createElement("div");
	dvBdy=document.createElement("div");
	CBE.boCSSBDY?dvBdy.className=CBE.boCSSBDY:defBdyStyle();
	CBE.boCSSHDR?dvHdr.className=CBE.boCSSHDR:defHdrStyle();
	dvHdr.innerHTML=CBE.boHDR;
	dvBdy.innerHTML=CBE.boBDY;
	ah=false;
	ab=false;
	if (CBE.boHDR!='') {		
		oDv.appendChild(dvHdr);
		ah=true;
	}	
	if (CBE.boBDY!=''){
		oDv.appendChild(dvBdy);
		ab=true;
	}	
}

var CSE,iterElem,LSE,CBE,LBE, totalScrollLeft, totalScrollTop, width, height ;
var ini=false;

// Customised function for inner window dimension
function SHW() {
   if (document.body && (document.body.clientWidth !=0)) {
      width=document.body.clientWidth;
      height=document.body.clientHeight;
   }
   if (document.documentElement && (document.documentElement.clientWidth!=0) && (document.body.clientWidth + 20 >= document.documentElement.clientWidth)) {
      width=document.documentElement.clientWidth;   
      height=document.documentElement.clientHeight;   
   }   
   return [width,height];
}

function pausecomp(millis)
{
var date = new Date();
var curDate = null;

do { curDate = new Date(); }
while(curDate-date < millis);
} 

var ID=null;
function moveMouse(e) {
   //boxMove=true;


	e?evt=e:evt=event;
	
	CSE=evt.target?evt.target:evt.srcElement;
	
	if (!CSE.hasbox) {
	   // Note we need to scan up DOM here, some elements like TR don't get triggered as srcElement
	   iElem=CSE;
	   while ((iElem.parentNode) && (!iElem.hasbox)) {
	      scanBO(iElem);
	      iElem=iElem.parentNode;
	   }	   
	}
	
	if ((CSE!=LSE)&&(!isChild(CSE,dvHdr))&&(!isChild(CSE,dvBdy))){		
	   if (!CSE.boxItem) {
			iterElem=CSE;
			while ((iterElem.hasbox==2)&&(iterElem.parentNode))
					iterElem=iterElem.parentNode; 
			CSE.boxItem=iterElem;
			}
		iterElem=CSE.boxItem;
		if (CSE.boxItem&&(CSE.boxItem.hasbox==1))  {
			LBE=CBE;
			CBE=iterElem;
			if (CBE!=LBE) {
				applyStyles();
				if (!CBE.requireclick)
					if (CBE.fade) {
						if (ID!=null)
							clearTimeout(ID);
						ID=setTimeout("fadeIn("+CBE.fadespeed+")",CBE.delay);
					}
					else {
						if (ID!=null)
							clearTimeout(ID);
						COL=1;
						ID=setTimeout("oDv.style.visibility='visible';ID=null;",CBE.delay);						
					}
				if (CBE.IEbugfix) {hideSelects();} 
				fixposx=!isNaN(CBE.fixX)?Left(CBE)+CBE.fixX:CBE.absX;
				fixposy=!isNaN(CBE.fixY)?Top(CBE)+CBE.fixY:CBE.absY;			
				lockX=0;
				lockY=0;
				boxMove=true;
				ox=CBE.offX?CBE.offX:10;
				oy=CBE.offY?CBE.offY:10;
			}
		}
		else if (!isChild(CSE,dvHdr) && !isChild(CSE,dvBdy) && (boxMove))	{
			// The conditional here fixes flickering between tables cells.
			if ((!isChild(CBE,CSE)) || (CSE.tagName!='TABLE')) {   			
   			CBE=null;
   			if (ID!=null)
  					clearTimeout(ID);
   			fadeOut();
   			showSelects();
			}
		}
		LSE=CSE;
	}
	else if (((isChild(CSE,dvHdr) || isChild(CSE,dvBdy))&&(boxMove))) {
		totalScrollLeft=0;
		totalScrollTop=0;
		
		iterElem=CSE;
		while(iterElem) {
			if(!isNaN(parseInt(iterElem.scrollTop)))
				totalScrollTop+=parseInt(iterElem.scrollTop);
			if(!isNaN(parseInt(iterElem.scrollLeft)))
				totalScrollLeft+=parseInt(iterElem.scrollLeft);
			iterElem=iterElem.parentNode;			
		}
		if (CBE!=null) {
			boxLeft=Left(CBE)-totalScrollLeft;
			boxRight=parseInt(Left(CBE)+CBE.offsetWidth)-totalScrollLeft;
			boxTop=Top(CBE)-totalScrollTop;
			boxBottom=parseInt(Top(CBE)+CBE.offsetHeight)-totalScrollTop;
			doCheck();
		}
	}
	
	if (boxMove&&CBE) {
		// This added to alleviate bug in IE6 w.r.t DOCTYPE
		bodyScrollTop=document.documentElement&&document.documentElement.scrollTop?document.documentElement.scrollTop:document.body.scrollTop;
		bodyScrollLet=document.documentElement&&document.documentElement.scrollLeft?document.documentElement.scrollLeft:document.body.scrollLeft;
		mouseX=evt.pageX?evt.pageX-bodyScrollLet:evt.clientX-document.body.clientLeft;
		mouseY=evt.pageY?evt.pageY-bodyScrollTop:evt.clientY-document.body.clientTop;
		if ((CBE)&&(CBE.windowLock)) {
			mouseY < -oy?lockY=-mouseY-oy:lockY=0;
			mouseX < -ox?lockX=-mouseX-ox:lockX=0;
			mouseY > (SHW()[1]-oDv.offsetHeight-oy)?lockY=-mouseY+SHW()[1]-oDv.offsetHeight-oy:lockY=lockY;
			mouseX > (SHW()[0]-dvBdy.offsetWidth-ox)?lockX=-mouseX-ox+SHW()[0]-dvBdy.offsetWidth:lockX=lockX;			
		}
		oDv.style.left=((fixposx)||(fixposx==0))?fixposx:bodyScrollLet+mouseX+ox+lockX+"px";
		oDv.style.top=((fixposy)||(fixposy==0))?fixposy:bodyScrollTop+mouseY+oy+lockY+"px";		
		
	}
}

function doCheck() {	
	if (   (mouseX < boxLeft)    ||     (mouseX >boxRight)     || (mouseY < boxTop) || (mouseY > boxBottom)) {
		if (!CBE.requireclick)
			fadeOut();
		if (CBE.IEbugfix) {showSelects();}
		CBE=null;
	}
}

function pauseBox(e) {
   e?evt=e:evt=event;
	boxMove=false;
	evt.cancelBubble=true;
}

function showHideBox(e) {
	oDv.style.visibility=(oDv.style.visibility!='visible')?'visible':'hidden';
}

function hideBox(e) {
	oDv.style.visibility='hidden';
}

var COL=0;
var stopfade=false;
function fadeIn(fs) {
		ID=null;
		COL=0;
		oDv.style.visibility='visible';
		fadeIn2(fs);
}

function fadeIn2(fs) {
		COL=COL+fs;
		COL=(COL>1)?1:COL;
		oDv.style.filter='alpha(opacity='+parseInt(100*COL)+')';
		oDv.style.opacity=COL;
		if (COL<1)
		 setTimeout("fadeIn2("+fs+")",20);		
}


function fadeOut() {
	oDv.style.visibility='hidden';
	
}

function isChild(s,d) {
	while(s) {
		if (s==d) 
			return true;
		s=s.parentNode;
	}
	return false;
}

var cSrc;
function checkMove(e) {
	e?evt=e:evt=event;
	cSrc=evt.target?evt.target:evt.srcElement;
	if ((!boxMove)&&(!isChild(cSrc,oDv))) {
		fadeOut();
		if (CBE&&CBE.IEbugfix) {showSelects();}
		boxMove=true;
		CBE=null;
	}
}

function showSelects(){
   var elements = document.getElementsByTagName("select");
   for (i=0;i< elements.length;i++){
      elements[i].style.visibility='visible';
   }
}

function hideSelects(){
   var elements = document.getElementsByTagName("select");
   for (i=0;i< elements.length;i++){
   elements[i].style.visibility='hidden';
   }
}