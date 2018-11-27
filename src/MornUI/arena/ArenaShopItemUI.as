/**Created by the LayaAirIDE,do not modify.*/
package MornUI.arena {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ArenaShopItemUI extends View {
		public var itemContainer:Box;
		public var priceTF:Text;
		public var buyBtn:Button;
		public var remainTF:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("arena/ArenaShopItem");

		}

	}
}