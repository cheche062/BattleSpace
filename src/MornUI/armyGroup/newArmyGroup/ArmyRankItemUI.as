/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup.newArmyGroup {
	import laya.ui.*;
	import laya.display.*; 
	

	public class ArmyRankItemUI extends View {
		public var dom_rank:Label;
		public var dom_name:Label;
		public var dom_group:Label;
		public var dom_kill:Label;
		public var dom_rewards:HBox;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("armyGroup/newArmyGroup/ArmyRankItem");

		}

	}
}