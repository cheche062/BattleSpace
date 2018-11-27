/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroupFight {
	import laya.ui.*;
	import laya.display.*; 
	

	public class ArmyFightReportUI extends View {
		public var closeBtn:Button;
		public var list:List;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("armyGroupFight/ArmyFightReport");

		}

	}
}