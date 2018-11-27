/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightResults {
	import laya.ui.*;
	import laya.display.*; 
	

	public class FightReportOverUI extends View {
		public var cbBtn:Button;
		public var closeBtn:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightResults/FightReportOver");

		}

	}
}