/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroupFight {
	import laya.ui.*;
	import laya.display.*; 
	

	public class ArmyFightRankItemUI extends View {
		public var dom_rank:Label;
		public var dom_name:Label;
		public var dom_group:Label;
		public var dom_kill:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("armyGroupFight/ArmyFightRankItem");

		}

	}
}