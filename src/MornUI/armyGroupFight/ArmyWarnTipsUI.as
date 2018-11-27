/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroupFight {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ArmyWarnTipsUI extends View {
		public var closeBtn:Button;
		public var confirmBtn:Button;
		public var wTipsTxt:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("armyGroupFight/ArmyWarnTips");

		}

	}
}