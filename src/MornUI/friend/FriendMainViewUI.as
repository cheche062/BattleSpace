/**Created by the LayaAirIDE,do not modify.*/
package MornUI.friend {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;
	import MornUI.friend.FriendInfoViewUI;
	import MornUI.friend.ChatInfoViewUI;
	import MornUI.friend.MailInfoViewUI;

	public class FriendMainViewUI extends View {
		public var CloseBtn:Button;
		public var CharBtn:Button;
		public var CharIconBtn:Button;
		public var ChatRedot:Image;
		public var MailBtn:Button;
		public var MailIconBtn:Button;
		public var MailRedot:Image;
		public var FriiendBtn:Button;
		public var FriendIconBtn:Button;
		public var FriendRedot:Image;
		public var FriendRedotText:Text;
		public var FriendInfo:FriendInfoViewUI;
		public var ChatInfo:ChatInfoViewUI;
		public var MainInfo:MailInfoViewUI;
		public var MailBox:Box;
		public var ServersBtn:Button;
		public var ServerRedot:Image;
		public var StstemBtn:Button;
		public var StstemRedot:Image;
		public var TakeAllBtn:Button;
		public var MailList:List;
		public var FriendBox:Box;
		public var FriendText:Text;
		public var FriendNum:Text;
		public var SetBtn:Button;
		public var FriendList:List;
		public var MaxFriendText:Text;
		public var OkBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			View.regComponent("MornUI.friend.FriendInfoViewUI",FriendInfoViewUI);
			View.regComponent("MornUI.friend.ChatInfoViewUI",ChatInfoViewUI);
			View.regComponent("MornUI.friend.MailInfoViewUI",MailInfoViewUI);
			super.createChildren();
			loadUI("friend/FriendMainView");

		}

	}
}