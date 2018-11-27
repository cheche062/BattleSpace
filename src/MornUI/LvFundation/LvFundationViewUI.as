/**Created by the LayaAirIDE,do not modify.*/
package MornUI.LvFundation {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class LvFundationViewUI extends View {
		public var chargeBtn:Button;
		public var rewardLIst:List;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("LvFundation/LvFundationView");

		}

	}
}