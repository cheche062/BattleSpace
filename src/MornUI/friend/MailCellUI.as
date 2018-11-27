/**Created by the LayaAirIDE,do not modify.*/
package MornUI.friend {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class MailCellUI extends View {
		public var BgImage:Image;
		public var MailImage:Image;
		public var HeadLineText:Text;
		public var TimeText:Text;
		public var FriendImage:Image;
		public var DeleteFriend:Button;
		public var FriendNameText:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("friend/MailCell");

		}

	}
}