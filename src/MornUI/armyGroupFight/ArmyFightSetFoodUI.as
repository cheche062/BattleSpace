/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroupFight {
	import laya.ui.*;
	import laya.display.*; 
	

	public class ArmyFightSetFoodUI extends View {
		public var closeBtn:Button;
		public var foodSlider:HSlider;
		public var addBtn:Button;
		public var minBtn:Button;
		public var confirmBtn:Button;
		public var allFoodTxt:Label;
		public var setFoodTxt:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("armyGroupFight/ArmyFightSetFood");

		}

	}
}