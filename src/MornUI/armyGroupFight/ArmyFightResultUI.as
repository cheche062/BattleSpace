/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroupFight {
	import laya.ui.*;
	import laya.display.*; 
	

	public class ArmyFightResultUI extends View {
		public var bg:Image;
		public var hResult:Label;
		public var aResult:Label;
		public var timeTF:Label;
		public var hNameTF:Label;
		public var rewardLb:Label;
		public var hResultIcon:Image;
		public var aResultIcon:Image;
		public var aNameTF:Label;
		public var groupTF_0:Label;
		public var nameTF_0:Label;
		public var killTF_0:Label;
		public var groupTF_1:Label;
		public var nameTF_1:Label;
		public var killTF_1:Label;
		public var groupTF_2:Label;
		public var nameTF_2:Label;
		public var killTF_2:Label;
		public var closeBtn:Button;
		public var homeIcon:Image;
		public var awayIcon:Image;
		public var itemSp:Sprite;
		public var titlePic:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("armyGroupFight/ArmyFightResult");

		}

	}
}