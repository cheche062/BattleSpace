/**Created by the LayaAirIDE,do not modify.*/
package MornUI.mineFight {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class MineShopViewUI extends View {
		public var itemList:List;
		public var closeBtn:Button;
		public var curNum:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("mineFight/MineShopView");

		}

	}
}