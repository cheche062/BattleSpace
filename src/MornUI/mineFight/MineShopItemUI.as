/**Created by the LayaAirIDE,do not modify.*/
package MornUI.mineFight {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class MineShopItemUI extends View {
		public var buyBtn:Button;
		public var iName:Text;
		public var iPrice:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("mineFight/MineShopItem");

		}

	}
}