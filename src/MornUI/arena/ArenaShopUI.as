/**Created by the LayaAirIDE,do not modify.*/
package MornUI.arena {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ArenaShopUI extends View {
		public var closeBtn:Button;
		public var goodsList:List;
		public var nowCoinTF:Text;
		public var pointsIcon:Image;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("arena/ArenaShop");

		}

	}
}