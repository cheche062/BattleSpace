/**Created by the LayaAirIDE,do not modify.*/
package MornUI.bossFight {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;
	import MornUI.bossFight.BossFightTipsViewUI;

	public class BossFightItemViewUI extends View {
		public var BuyItemBtn0:Button;
		public var BuyItemBtn1:Button;
		public var BuyItemBtn2:Button;
		public var ItemImage0:Image;
		public var ItemImage1:Image;
		public var ItemImage2:Image;
		public var BuyItemImage0:Image;
		public var BuyItemImage1:Image;
		public var BuyItemImage2:Image;
		public var ItemList:List;
		public var CloseBtn:Button;
		public var YourItemText:Text;
		public var TitleText:Text;
		public var BossFightTips:BossFightTipsViewUI;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			View.regComponent("MornUI.bossFight.BossFightTipsViewUI",BossFightTipsViewUI);
			super.createChildren();
			loadUI("bossFight/BossFightItemView");

		}

	}
}