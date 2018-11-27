/**Created by the LayaAirIDE,do not modify.*/
package MornUI.teamcopy {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class TeamCopySoldierCellUI extends View {
		public var bg:Image;
		public var HeroImage:Image;
		public var LevelText:Text;
		public var qPic:Image;
		public var mPic:Image;
		public var numTF:Text;
		public var defendIcon:Image;
		public var attackIcon:Image;
		public var iconCamp:Image;
		public var minusBtn:Button;
		public var stateTF:Text;
		public var timeTF:Text;
		public var rebornBtn:Button;
		public var stateIcon:Image;
		public var FightingBgImage:Image;
		public var FightingImage:Image;
		public var FightingText:Label;
		public var popBox:Box;
		public var popLb:Text;
		public var maxLb:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("teamcopy/TeamCopySoldierCell");

		}

	}
}