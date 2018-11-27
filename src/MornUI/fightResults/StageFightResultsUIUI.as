/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightResults {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.fightResults.FightResultsSoldierCellUIUI;
	import MornUI.fightResults.RequirementCellUI;

	public class StageFightResultsUIUI extends View {
		public var bgImg:Image;
		public var closeBtn:Button;
		public var tileImg:Image;
		public var piImg:Image;
		public var pi2:FightResultsSoldierCellUIUI;
		public var lrBox:RequirementCellUI;
		public var sCellList:List;
		public var starBg:Image;
		public var noDie:Label;

		override protected function createChildren():void {
			View.regComponent("MornUI.fightResults.FightResultsSoldierCellUIUI",FightResultsSoldierCellUIUI);
			View.regComponent("MornUI.fightResults.RequirementCellUI",RequirementCellUI);
			super.createChildren();
			loadUI("fightResults/StageFightResultsUI");

		}

	}
}