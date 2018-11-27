/**Created by the LayaAirIDE,do not modify.*/
package MornUI.teamcopy {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class TeamCopyRoomInfoCellUI extends View {
		public var RestrictionsUseText:Text;
		public var RoomLevelText:Text;
		public var RewardList:List;
		public var DoubleImage:Image;
		public var NumText:Text;
		public var NameText:Text;
		public var PlayerLevelText:Text;
		public var JoinBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("teamcopy/TeamCopyRoomInfoCell");

		}

	}
}