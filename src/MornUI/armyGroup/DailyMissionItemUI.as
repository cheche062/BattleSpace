/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class DailyMissionItemUI extends View {
		public var rewardDiscrible:Text;
		public var getBtn:Button;
		public var alreadyGet:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("armyGroup/DailyMissionItem");

		}

	}
}