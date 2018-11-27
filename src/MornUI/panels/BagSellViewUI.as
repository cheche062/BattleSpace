/**Created by the LayaAirIDE,do not modify.*/
package MornUI.panels {
	import laya.ui.*;
	import laya.display.*; 
	

	public class BagSellViewUI extends View {
		public var numInput:TextInput;
		public var leftBtn:Button;
		public var rightBtn:Button;
		public var okBtn:Button;
		public var cancleBtn:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("panels/BagSellView");

		}

	}
}