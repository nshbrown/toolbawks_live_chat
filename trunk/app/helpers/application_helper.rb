# Copyright (c) 2007 Nathaniel Brown
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

module ApplicationHelper
  def toolbawks_live_chat
    <<-EOL
    <link href="/plugin_assets/toolbawks_live_chat/stylesheets/Toolbawks.live_chat.css" media="screen" rel="Stylesheet" type="text/css" />
    <div id="toolbawks_live_chat">
      <a href="#{ ToolbawksLiveChat.BUTTON_URL }" target="chat#{ ToolbawksLiveChat.CODE }" onClick="live_chat_button_click(); return false;" ><img src="http://server.iad.liveperson.net/hc/#{ ToolbawksLiveChat.CODE }/?cmd=repstate&site=#{ ToolbawksLiveChat.CODE }&channel=web&&ver=1&imageUrl=#{ ToolbawksLiveChat.IMAGE_URL }" border="0" alt="#{ ToolbawksLiveChat.BUTTON_TITLE }" /></a>
    </div>
    </script>
EOL
  end
  
  def toolbawks_live_chat_monitor
    <<-EOL
    <script language='javascript' src='http://server.iad.liveperson.net/hc/#{ ToolbawksLiveChat.CODE }/x.js?cmd=file&file=chatScript3&site=#{ ToolbawksLiveChat.CODE }&imageUrl=#{ ToolbawksLiveChat.INVITE_IMAGE_URL }'> </script>
    
    <script src="/plugin_assets/toolbawks_live_chat/javascripts/Toolbawks.live_chat.js" type="text/javascript"></script>
    <script type="text/javascript">
    <!--
    if (document.all && typeof(hcShowTheImage) != 'undefined' && hcShowTheImage != false) {
      lpOldShowTheImage = hcShowTheImage;
      hcShowTheImage = lpShowTheImageHook;
    }
    //-->
    </script>
EOL
  end
  
  def toolbawks_live_chat_default
    <<-EOL
    <!-- BEGIN LivePerson Button Code -->
    <div>
      <table border='0' cellspacing='2' cellpadding='2'><tr><td align="center"></td><td align='center'><a id="_lpChatBtn" href='http://server.iad.liveperson.net/hc/#{ ToolbawksLiveChat.CODE }/?cmd=file&file=visitorWantsToChat&site=#{ ToolbawksLiveChat.CODE }&byhref=1&imageUrl=#{ ToolbawksLiveChat.IMAGE_URL }' target='chat#{ ToolbawksLiveChat.CODE }'  onClick="lpButtonCTTUrl = 'http://server.iad.liveperson.net/hc/#{ ToolbawksLiveChat.CODE }/?cmd=file&file=visitorWantsToChat&site=#{ ToolbawksLiveChat.CODE }&imageUrl=#{ ToolbawksLiveChat.IMAGE_URL }&referrer='+escape(document.location); lpButtonCTTUrl = (typeof(lpAppendVisitorCookies) != 'undefined' ? lpAppendVisitorCookies(lpButtonCTTUrl) : lpButtonCTTUrl); window.open(lpButtonCTTUrl,'chat#{ ToolbawksLiveChat.CODE }','width=475,height=400,resizable=yes');return false;" ><img src='http://server.iad.liveperson.net/hc/#{ ToolbawksLiveChat.CODE }/?cmd=repstate&site=#{ ToolbawksLiveChat.CODE }&channel=web&&ver=1&imageUrl=#{ ToolbawksLiveChat.IMAGE_URL }' name='hcIcon' border=0></a></td></tr><tr><td>&nbsp;</td><td align='center'><div style="margin-top:5px;"><a href='http://www.liveperson.com' target="_blank" title="Go to www.liveperson.com" style='text-decoration:none'><span style='font-size: 10px; font-family: Arial, Helvetica, sans-serif'><font face='Arial' size='-2' color='#333333'>Live Chat by </font></span><font face="Arial" color="#FF9900"><span style="font-family: Arial, Helvetica, sans-serif"><font size="1">LivePerson</font></span></font></a></div></td></tr></table>
    </div>
    <!-- END LivePerson Button code -->
EOL
=begin
<!-- BEGIN Invitation Positioning  -->
<script language="javascript" type="text/javascript">
var lpPosY = 100;
var lpPosX = 100;
</script>
<!-- END Invitation Positioning  -->

<!-- BEGIN HumanTag Monitor. DO NOT MOVE! MUST BE PLACED JUST BEFORE THE /BODY TAG -->
<script language='javascript' src='http://server.iad.liveperson.net/hc/12000885/x.js?cmd=file&file=chatScript3&site=12000885&&imageUrl=http://server.iad.liveperson.net/hcp/Gallery/ChatButton-Gallery/English/General/1a'> </script>
<!-- END HumanTag Monitor. DO NOT MOVE! MUST BE PLACED JUST BEFORE THE /BODY TAG -->
<!-- BEGIN Invitation Sound  -->
<script language='javascript' type='text/javascript'>function lpShowTheImageHook() {var body = document.getElementsByTagName('body');var divE = document.createElement('bgsound');divE.id = 'lpInvitationSound';divE.style.position = 'absolute';divE.style.left = '0px';divE.style.top = '0px';divE.hidden = 'true';divE.src='http://server.iad.liveperson.net/hcp/Gallery/chime03.wav';divE.autostart='true';divE.loop='0';body[0].appendChild(divE);setTimeout("document.getElementsByTagName('body')[0].removeChild(document.getElementById('lpInvitationSound'))", 3000);lpOldShowTheImage();}
if (document.all && typeof(hcShowTheImage) != 'undefined') {lpOldShowTheImage = hcShowTheImage;hcShowTheImage = lpShowTheImageHook;}</script>
<!-- END Invitation Sound  -->
=end
    <<-EOL
    <!-- BEGIN Invitation Positioning  -->
    <script language="javascript" type="text/javascript">
    var lpPosY = 100;
    </script>
    <!-- END Invitation Positioning  -->

    <!-- BEGIN HumanTag Monitor. DO NOT MOVE! MUST BE PLACED JUST BEFORE THE /BODY TAG -->
    <script language='javascript' src='http://server.iad.liveperson.net/hc/#{ ToolbawksLiveChat.CODE }/x.js?cmd=file&file=chatScript3&site=#{ ToolbawksLiveChat.CODE }&&imageUrl=#{ ToolbawksLiveChat.IMAGE_URL }'> </script>
    <!-- END HumanTag Monitor. DO NOT MOVE! MUST BE PLACED JUST BEFORE THE /BODY TAG -->

    <!-- BEGIN Invitation Sound  -->
    <script language='javascript' type='text/javascript'>function lpShowTheImageHook() {var body = document.getElementsByTagName('body');var divE = document.createElement('bgsound');divE.id = 'lpInvitationSound';divE.style.position = 'absolute';divE.style.left = '0px';divE.style.top = '0px';divE.hidden = 'true';divE.src='http://server.iad.liveperson.net/hcp/Gallery/chime03.wav';divE.autostart='true';divE.loop='0';body[0].appendChild(divE);setTimeout("document.getElementsByTagName('body')[0].removeChild(document.getElementById('lpInvitationSound'))", 3000);lpOldShowTheImage();}
    if (document.all && typeof(hcShowTheImage) != 'undefined') {lpOldShowTheImage = hcShowTheImage;hcShowTheImage = lpShowTheImageHook;}</script>
    <!-- END Invitation Sound  -->
EOL
  end
end