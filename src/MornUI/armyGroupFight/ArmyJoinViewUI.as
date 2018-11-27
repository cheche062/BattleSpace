/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroupFight {
	import laya.ui.*;
	import laya.display.*; 
	

	public class ArmyJoinViewUI extends View {
		public var attBtn:Image;
		public var defBtn:Image;
		public var laterBtn:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("armyGroupFight/ArmyJoinView");

		}

	}
}