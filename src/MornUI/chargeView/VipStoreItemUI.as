/**Created by the LayaAirIDE,do not modify.*/
package MornUI.chargeView {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;
	import MornUI.componets.ItemIconUI;

	public class VipStoreItemUI extends View {
		public var buyBtn:Button;
		public var currencyIcon:Image;
		public var priceTF:Text;
		public var item:ItemIconUI;
		public var numTF:Text;
		public var limitTF:Text;
		public var rLabel:Text;
		public var nameTF:Text;
		public var imVip:Image;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			View.regComponent("MornUI.componets.ItemIconUI",ItemIconUI);
			super.createChildren();
			loadUI("chargeView/VipStoreItem");

		}

	}
}