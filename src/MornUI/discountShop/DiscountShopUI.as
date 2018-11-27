/**Created by the LayaAirIDE,do not modify.*/
package MornUI.discountShop {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class DiscountShopUI extends View {
		public var list:List;
		public var numTf:Text;
		public var itemIcon:Image;
		public var leftTime:Label;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("discountShop/DiscountShop");

		}

	}
}