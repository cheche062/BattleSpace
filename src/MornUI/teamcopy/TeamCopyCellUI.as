/**Created by the LayaAirIDE,do not modify.*/
package MornUI.teamcopy {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class TeamCopyCellUI extends View {
		public var NameText:Text;
		public var LevelText:Text;
		public var SoldierList:List;
		public var BootBtn:Button;
		public var GouImage:Image;
		public var AutoBtn:Button;
		public var UnReadyBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("teamcopy/TeamCopyCell");

		}

	}
}