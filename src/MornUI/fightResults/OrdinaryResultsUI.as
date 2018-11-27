/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightResults {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.fightResults.FightResultsSoldierCellUIUI;

	public class OrdinaryResultsUI extends View {
		public var bgImg:Image;
		public var closeBtn:Button;
		public var tileImg:Image;
		public var piImg:Image;
		public var pi2:FightResultsSoldierCellUIUI;
		public var noDie:Label;
		public var zkLbl:Label;
		public var tfEx:Label;

		override protected function createChildren():void {
			View.regComponent("MornUI.fightResults.FightResultsSoldierCellUIUI",FightResultsSoldierCellUIUI);
			super.createChildren();
			loadUI("fightResults/OrdinaryResults");

		}

	}
}