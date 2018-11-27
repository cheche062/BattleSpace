/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroupFight {
	import laya.ui.*;
	import laya.display.*; 
	

	public class ArmyItemTipUI extends View {
		public var editBtn:Button;
		public var downBtn:Button;
		public var list:List;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("armyGroupFight/ArmyItemTip");

		}

	}
}