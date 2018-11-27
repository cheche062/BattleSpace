/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightResults {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.fightResults.FightResultsSoldierCellUIUI;

	public class ArenasResultsUI extends View {
		public var bgImg:Image;
		public var closeBtn:Button;
		public var tileImg:Image;
		public var pi1:Image;
		public var pi2:FightResultsSoldierCellUIUI;
		public var noDie:Label;
		public var rankBox:Box;
		public var rankLbl2:Label;
		public var rankadImg:Image;
		public var rankadLbl:Label;

		override protected function createChildren():void {
			View.regComponent("MornUI.fightResults.FightResultsSoldierCellUIUI",FightResultsSoldierCellUIUI);
			super.createChildren();
			loadUI("fightResults/ArenasResults");

		}

	}
}