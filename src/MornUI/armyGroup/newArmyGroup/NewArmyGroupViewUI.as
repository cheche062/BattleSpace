/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup.newArmyGroup {
	import laya.ui.*;
	import laya.display.*; 
	

	public class NewArmyGroupViewUI extends View {
		public var dom_text_box:Box;
		public var dom_test_sprite:Sprite;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("armyGroup/newArmyGroup/NewArmyGroupView");

		}

	}
}