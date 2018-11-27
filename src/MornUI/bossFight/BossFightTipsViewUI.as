/**Created by the LayaAirIDE,do not modify.*/
package MornUI.bossFight {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class BossFightTipsViewUI extends View {
		public var CloseBtn:Button;
		public var BuyBtn:Button;
		public var CostImage:Image;
		public var LabelText:Text;
		public var ItemList:List;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("bossFight/BossFightTipsView");

		}

	}
}