/**Created by the LayaAirIDE,do not modify.*/
package MornUI.singleRecharge {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class SigleRechargeItemUI extends View {
		public var dom_HBox:HBox;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("singleRecharge/SigleRechargeItem");

		}

	}
}