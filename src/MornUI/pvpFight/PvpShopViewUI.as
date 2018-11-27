/**Created by the LayaAirIDE,do not modify.*/
package MornUI.pvpFight {
	import laya.ui.*;
	import laya.display.*; 
	

	public class PvpShopViewUI extends View {
		public var closeBtn:Button;
		public var shopList:List;
		public var bBox:Box;
		public var needBox:Box;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("pvpFight/PvpShopView");

		}

	}
}