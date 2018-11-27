/**Created by the LayaAirIDE,do not modify.*/
package MornUI.inviteFriends {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.inviteFriends.InviteGameFriendItemUI;

	public class InviteGameFriendsUI extends View {
		public var btn_close:Button;
		public var dom_all:CheckBox;
		public var btn_invite:Button;
		public var dom_list:List;
		public var btn_send:Button;

		override protected function createChildren():void {
			View.regComponent("MornUI.inviteFriends.InviteGameFriendItemUI",InviteGameFriendItemUI);
			super.createChildren();
			loadUI("inviteFriends/InviteGameFriends");

		}

	}
}