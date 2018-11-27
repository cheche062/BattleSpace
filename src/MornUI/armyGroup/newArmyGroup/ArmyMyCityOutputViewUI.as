/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup.newArmyGroup {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.armyGroup.newArmyGroup.OutPutItemUI;

	public class ArmyMyCityOutputViewUI extends View {
		public var btn_close:Button;
		public var dom_list:List;

		override protected function createChildren():void {
			View.regComponent("MornUI.armyGroup.newArmyGroup.OutPutItemUI",OutPutItemUI);
			super.createChildren();
			loadUI("armyGroup/newArmyGroup/ArmyMyCityOutputView");

		}

	}
}