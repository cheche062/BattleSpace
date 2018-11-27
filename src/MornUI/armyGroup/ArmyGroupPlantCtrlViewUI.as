/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup {
	import laya.ui.*;
	import laya.display.*; 
	

	public class ArmyGroupPlantCtrlViewUI extends View {
		public var fightBtn:Button;
		public var defBtn:Button;
		public var moveBtn:Button;
		public var justLookBtn:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("armyGroup/ArmyGroupPlantCtrlView");

		}

	}
}