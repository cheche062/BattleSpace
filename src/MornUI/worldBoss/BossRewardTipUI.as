/**Created by the LayaAirIDE,do not modify.*/
package MornUI.worldBoss {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class BossRewardTipUI extends View {
		public var closeBtn:Button;
		public var itemBuyBtn:Button;
		public var box_BoxList:HBox;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("worldBoss/BossRewardTip");

		}

	}
}