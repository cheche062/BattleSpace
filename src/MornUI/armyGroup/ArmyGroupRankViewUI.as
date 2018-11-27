/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup {
	import laya.ui.*;
	import laya.display.*; 
	

	public class ArmyGroupRankViewUI extends View {
		public var closeBtn:Button;
		public var rankingBtn:Button;
		public var redDot1:Image;
		public var groupBtn:Button;
		public var viewContainer:Sprite;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("armyGroup/ArmyGroupRankView");

		}

	}
}