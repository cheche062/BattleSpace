/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightResults {
	import laya.ui.*;
	import laya.display.*; 
	

	public class FightResultsSoldierCellUIUI extends View {
		public var faceImg:Image;
		public var numLbl:Label;
		public var piImg:Image;
		public var flag:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightResults/FightResultsSoldierCellUI");

		}

	}
}