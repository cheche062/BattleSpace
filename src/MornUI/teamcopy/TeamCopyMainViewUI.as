/**Created by the LayaAirIDE,do not modify.*/
package MornUI.teamcopy {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class TeamCopyMainViewUI extends View {
		public var bg:Image;
		public var bgBar:Image;
		public var contentBox:Box;
		public var TipsImage:Image;
		public var TipsText:Text;
		public var DoubleImage:Image;
		public var RoomList:List;
		public var RoomRefreshBtn:Button;
		public var LevelText:Text;
		public var RestrictionsUseText:Text;
		public var RequireText:Text;
		public var NumText:Text;
		public var RefreshBtn:Button;
		public var RewardList:List;
		public var SoldierList:List;
		public var IdText:TextInput;
		public var SearchBtn:Button;
		public var RuleText:Text;
		public var RestrictionsText:Text;
		public var AliaceBonusText:Text;
		public var RewardText:Text;
		public var LevelRequipText:Text;
		public var AutoJoinBtn:Button;
		public var CreationBtn:Button;
		public var guideArea:Box;
		public var roomInfoArea:Sprite;
		public var timeArea:Sprite;
		public var searchArea:Sprite;
		public var ReturnBtn:Button;
		public var TiitleText:Label;
		public var CloseBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("teamcopy/TeamCopyMainView");

		}

	}
}