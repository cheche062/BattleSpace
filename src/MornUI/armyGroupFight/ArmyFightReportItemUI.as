/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroupFight {
	import laya.ui.*;
	import laya.display.*; 
	

	public class ArmyFightReportItemUI extends View {
		public var infoTF:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("armyGroupFight/ArmyFightReportItem");

		}

	}
}