// Internal liveperson variable
var lpPosY = 100;
var lpPosX = 100;

if (typeof(Toolbawks) == 'undefined') {
  Toolbawks = {};
}

Toolbawks.live_chat = {};
Toolbawks.live_chat.BUTTON_URL = '/toolbawks/live_chat/start';
Toolbawks.live_chat.INVITE_URL = '/toolbawks/live_chat/invite';
Toolbawks.live_chat.CODE = '12000885';
Toolbawks.live_chat.WIDTH = 475;
Toolbawks.live_chat.HEIGHT = 400;

/*
Toolbawks.live_chat = function() {
  return {
    init : function() {
    },
    
    button_click : function() {
    },
    
    lpShowTheImageHook : function() {
    }
  };
}();
*/
function live_chat_button_click() {
  lpButtonCTTUrl = Toolbawks.live_chat.BUTTON_URL + '?referrer=' + escape(document.location);
  var window_url = false;
  
  try {
    var window_url = (typeof(lpAppendVisitorCookies) != 'undefined' ? lpAppendVisitorCookies(lpButtonCTTUrl) : lpButtonCTTUrl); 
  
    if (typeof(window_url) == 'undefined' || !window_url || window_url == false || window_url == '') {
      window_url = lpButtonCTTUrl;
    }
  } catch(e) {}
  
  try {
    // window.open(window_url.toString(), 'chat12000885', 'width=475,height=400,resizable=yes');
    window.open(lpButtonCTTUrl, 'chat' + Toolbawks.live_chat.CODE, 'width=' + Toolbawks.live_chat.WIDTH + ',height=' + Toolbawks.live_chat.HEIGHT + ',resizable=yes');
  } catch(e) {}
  
  return false;
}

function lpShowTheImageHook() { 
  var body = document.getElementsByTagName('body');
  var divE = document.createElement('bgsound');
  divE.id = 'lpInvitationSound';
  divE.style.position = 'absolute';
  divE.style.left = '0px';
  divE.style.top = '0px';
  divE.hidden = 'true';
  divE.src = 'http://perity.com/plugin_assets/toolbawks_live_chat/images/chime03.wav';
  divE.autostart = 'true';
  divE.loop = '0';
  body[0].appendChild(divE);
  setTimeout("document.getElementsByTagName('body')[0].removeChild(document.getElementById('lpInvitationSound'))", 300);
  lpOldShowTheImage();
}

// Custom function to override what goes on when a user initatives an invitation request that was sent by a rep
function lpOpenChat(url, name, params) {
  url = Toolbawks.live_chat.INVITE_URL + '?url=' + escape(url);
  var ow = window.open(url, name, params);
  if ((typeof(ow) == 'undefined' && isAuto) || ((ow == null) && isAuto)) {
    lpOpenEngageChat("engage", null);
  }
}

function lpOpenEngageChat(param, openVars) {
	if (hcRejected || hasValidLPRejectedCookie()) {
    console.log('lpOpenEngageChat -> if -> hcRejectCall');
		hcRejectCall();
		return;
	}
	
	hcParam = param;
	hcOpenVars = openVars;
	
	if ((! lpForcePopup) && (hcIE || hcNS || hcDOM)) {
    console.log('lpOpenEngageChat -> if -> hcShowTheImage');
		hcShowTheImage();
	} else {
    var url = hcBase + '?cmd=file&file=wantsToChat&site=' + lpNumber + '&d=' + hcDate();
    url = lpAppendVisitorCookies(url);
    params = ',,menubar=no,scrollbars=no';
    name = 'wanttochat' + lpNumber;

    console.log('lpOpenEngageChat -> else -> url : ' + url + ', name : ' + name + ', params : ' + params);

		window.open(url, name, params);
	}
}