/**Created by the LayaAirIDE,do not modify.*/
package MornUI.acitivity {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class CostActOneUI extends View {
		public var timeTF:Text;
		public var numTF:Text;
		public var getBtn:Button;
		public var nowCharge:Text;
		public var charge_0:Box;
		public var item_0:Button;
		public var price_0:Text;
		public var charge_1:Box;
		public var item_1:Button;
		public var price_1:Text;
		public var charge_2:Box;
		public var item_2:Button;
		public var price_2:Text;
		public var charge_3:Box;
		public var item_3:Button;
		public var price_3:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("acitivity/CostActOne");

		}

	}
}