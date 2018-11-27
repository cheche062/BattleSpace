/**Created by the LayaAirIDE,do not modify.*/
package MornUI.store {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class StoreUI extends View {
		public var closeBtn:Button;
		public var titleTF:Text;
		public var currencyIcon:Image;
		public var labelTF:Text;
		public var currencyTF:Text;
		public var itemList:List;
		public var typeTab:Tab;
		public var refreshBox:Box;
		public var refreshBtn:Button;
		public var priceTF:Text;
		public var listDiscount:List;
		public var lbCountdown:Label;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("store/Store");

		}

	}
}