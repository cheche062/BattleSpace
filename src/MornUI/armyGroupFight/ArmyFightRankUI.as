/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroupFight {
	import laya.ui.*;
	import laya.display.*; 
	

	public class ArmyFightRankUI extends View {
		public var closeBtn:Button;
		public var list:List;
		public var numTF:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("armyGroupFight/ArmyFightRank");

		}

	}
}