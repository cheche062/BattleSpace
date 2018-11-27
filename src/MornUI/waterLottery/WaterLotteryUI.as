/**Created by the LayaAirIDE,do not modify.*/
package MornUI.waterLottery {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class WaterLotteryUI extends View {
		public var itemBox:Box;
		public var ruleBtn:Button;
		public var startBtn:Button;
		public var resetTime:Text;
		public var maxGet:Text;
		public var payInfo:Box;
		public var price:Text;
		public var needVip:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("waterLottery/WaterLottery");

		}

	}
}