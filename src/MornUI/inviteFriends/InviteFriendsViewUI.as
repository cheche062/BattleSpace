/**Created by the LayaAirIDE,do not modify.*/
package MornUI.inviteFriends {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;
	import MornUI.inviteFriends.InviteFriendItemUI;

	public class InviteFriendsViewUI extends View {
		public var btn_close:Button;
		public var searchBtn:Button;
		public var dom_all:CheckBox;
		public var dom_input:TextInput;
		public var dom_list:List;
		public var btn_confirm:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			View.regComponent("MornUI.inviteFriends.InviteFriendItemUI",InviteFriendItemUI);
			super.createChildren();
			loadUI("inviteFriends/InviteFriendsView");

		}

	}
}