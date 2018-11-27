/**Created by the LayaAirIDE,do not modify.*/
package MornUI.klotski {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.klotski.KlotskiFightItemUI;

	public class KlotskiFightViewUI extends View {
		public var item_0:KlotskiFightItemUI;
		public var item_1:KlotskiFightItemUI;
		public var item_2:KlotskiFightItemUI;
		public var item_3:KlotskiFightItemUI;
		public var item_4:KlotskiFightItemUI;
		public var btnDouble:Button;
		public var tfPrice:Label;
		public var btnHide:Button;
		public var btnFight:Button;
		public var itemSpr:Sprite;

		override protected function createChildren():void {
			View.regComponent("MornUI.klotski.KlotskiFightItemUI",KlotskiFightItemUI);
			super.createChildren();
			loadUI("klotski/KlotskiFightView");

		}

	}
}