/**Created by the LayaAirIDE,do not modify.*/
package MornUI.teamcopy {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class TeamCopyRoomViewUI extends View {
		public var bg:Image;
		public var bgBar:Image;
		public var ReturnBtn:Button;
		public var TitleText:Label;
		public var contentBox:Box;
		public var LevelRequipText:Text;
		public var RestrictionsText:Text;
		public var LevelText:Text;
		public var RestrictionsUseText:Text;
		public var RoomNum1Text:Text;
		public var RoomNumText:Text;
		public var RewardText:Text;
		public var SoldierText:Text;
		public var SoldierList:List;
		public var RewardList:List;
		public var StartBtn:Button;
		public var TeamList:List;
		public var InviteBtn:Button;
		public var btn_inviteGame:Button;
		public var DoubleImage:Image;
		public var rightBox:Box;
		public var ChatList:Image;
		public var ChatPanel:Panel;
		public var ChatText:TextInput;
		public var SendBtn:Button;
		public var SelectSoldierBox:Box;
		public var bgUnit:Image;
		public var SelectSoldierList:List;
		public var SelectTab:Tab;
		public var CloseBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("teamcopy/TeamCopyRoomView");

		}

	}
}