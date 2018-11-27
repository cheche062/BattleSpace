/**Created by the LayaAirIDE,do not modify.*/
package MornUI.waterLottery {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class WaterLotteryRuleUI extends View {
		public var sheetContainer:Box;
		public var ruleSheet:Sprite;
		public var closeBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("waterLottery/WaterLotteryRule");

		}

	}
}