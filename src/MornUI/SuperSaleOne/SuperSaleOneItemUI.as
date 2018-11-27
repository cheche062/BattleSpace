/**Created by the LayaAirIDE,do not modify.*/
package MornUI.SuperSaleOne {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class SuperSaleOneItemUI extends View {
		public var refreshBtn:Button;
		public var buyBtn:Button;
		public var stockTxt:Text;
		public var oriPriceTxt:Text;
		public var nowPriceTxt:Text;
		public var refreshPriceTxt:Text;
		public var discountTxt:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("SuperSaleOne/SuperSaleOneItem");

		}

	}
}