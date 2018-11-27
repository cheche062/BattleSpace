/**Created by the LayaAirIDE,do not modify.*/
package MornUI.relic {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class TransportMainViewUI extends View {
		public var CloseBtn:Button;
		public var BuyBtn:Button;
		public var ItemImage:Image;
		public var LabelText:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("relic/TransportMainView");

		}

	}
}