/**Created by the LayaAirIDE,do not modify.*/
package MornUI.panels {
	import laya.ui.*;
	import laya.display.*; 
	

	public class BagUseViewUI extends View {
		public var okBtn:Button;
		public var leftBtn:Button;
		public var rightBtn:Button;
		public var numInput:TextInput;
		public var closeBtn:Button;
		public var pi:Image;
		public var tileLbl:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("panels/BagUseView");

		}

	}
}