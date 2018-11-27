/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroupFight {
	import laya.ui.*;
	import laya.display.*; 
	

	public class ArmyFightItemUI extends View {
		public var bg:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("armyGroupFight/ArmyFightItem");

		}

	}
}