/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightResults {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.fightResults.FightResultsSoldierCellUIUI;

	public class PvpResultsUIUI extends View {
		public var bgImg:Image;
		public var closeBtn:Button;
		public var tileImg:Image;
		public var pi2:FightResultsSoldierCellUIUI;
		public var noDie:Label;
		public var scoreBar:ProgressBar;
		public var ppBox:Box;
		public var scoreLbl2:Label;
		public var scoreadImg:Image;
		public var jscoreadImg:Image;
		public var scoreadLbl:Label;
		public var iconImg:Image;
		public var adDaibiLbl:Label;
		public var lRankFace:Image;
		public var rRankFace:Image;

		override protected function createChildren():void {
			View.regComponent("MornUI.fightResults.FightResultsSoldierCellUIUI",FightResultsSoldierCellUIUI);
			super.createChildren();
			loadUI("fightResults/PvpResultsUI");

		}

	}
}