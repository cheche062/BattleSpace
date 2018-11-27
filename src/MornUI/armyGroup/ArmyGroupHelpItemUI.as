/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup {
	import laya.ui.*;
	import laya.display.*; 
	

	public class ArmyGroupHelpItemUI extends View {
		public var dom_txt:Label;
		public var dom_img:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("armyGroup/ArmyGroupHelpItem");

		}

	}
}