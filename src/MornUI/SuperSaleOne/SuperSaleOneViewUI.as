/**Created by the LayaAirIDE,do not modify.*/
package MornUI.SuperSaleOne {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;
	import MornUI.SuperSaleOne.SuperSaleOneItemUI;

	public class SuperSaleOneViewUI extends View {
		public var refreshAllbtn:Button;
		public var refreshAllTxt:Text;
		public var item_0:SuperSaleOneItemUI;
		public var item_1:SuperSaleOneItemUI;
		public var item_2:SuperSaleOneItemUI;
		public var item_3:SuperSaleOneItemUI;
		public var item_4:SuperSaleOneItemUI;
		public var item_5:SuperSaleOneItemUI;
		public var timeTxt:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			View.regComponent("MornUI.SuperSaleOne.SuperSaleOneItemUI",SuperSaleOneItemUI);
			super.createChildren();
			loadUI("SuperSaleOne/SuperSaleOneView");

		}

	}
}