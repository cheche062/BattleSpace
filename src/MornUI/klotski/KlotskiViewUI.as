/**Created by the LayaAirIDE,do not modify.*/
package MornUI.klotski {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.klotski.KlotskiItemUI;
	import MornUI.klotski.KlotskiFightViewUI;

	public class KlotskiViewUI extends View {
		public var item_0:KlotskiItemUI;
		public var item_1:KlotskiItemUI;
		public var item_2:KlotskiItemUI;
		public var item_3:KlotskiItemUI;
		public var item_4:KlotskiItemUI;
		public var item_5:KlotskiItemUI;
		public var item_6:KlotskiItemUI;
		public var btnReset:Button;
		public var tfPrice:Label;
		public var tfTitle:Label;
		public var itemSpr:Sprite;
		public var btnReward:Button;
		public var fightCom:KlotskiFightViewUI;
		public var btnClose:Button;
		public var btnHelp:Button;

		override protected function createChildren():void {
			View.regComponent("MornUI.klotski.KlotskiItemUI",KlotskiItemUI);
			View.regComponent("MornUI.klotski.KlotskiFightViewUI",KlotskiFightViewUI);
			super.createChildren();
			loadUI("klotski/KlotskiView");

		}

	}
}