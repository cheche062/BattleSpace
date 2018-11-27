/**Created by the LayaAirIDE,do not modify.*/
package MornUI.worldBoss {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class MissionItemUI extends View {
		public var rewardDiscrible:Text;
		public var getBtn:Button;
		public var alreadyGet:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("worldBoss/MissionItem");

		}

	}
}