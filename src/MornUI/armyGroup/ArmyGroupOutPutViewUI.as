/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.armyGroup.AGStoreItemUI;

	public class ArmyGroupOutPutViewUI extends View {
		public var closeBtn:Button;
		public var storeList:List;

		override protected function createChildren():void {
			View.regComponent("MornUI.armyGroup.AGStoreItemUI",AGStoreItemUI);
			super.createChildren();
			loadUI("armyGroup/ArmyGroupOutPutView");

		}

	}
}