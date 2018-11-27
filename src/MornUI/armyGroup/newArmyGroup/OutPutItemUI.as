/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup.newArmyGroup {
	import laya.ui.*;
	import laya.display.*; 
	

	public class OutPutItemUI extends View {
		public var dom_name:Label;
		public var dom_state:Label;
		public var dom_rewards:HBox;
		public var dom_time:Label;
		public var dom_go:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("armyGroup/newArmyGroup/OutPutItem");

		}

	}
}