/**Created by the LayaAirIDE,do not modify.*/
package MornUI.homeScenceView {
	import laya.ui.*;
	import laya.display.*; 
	

	public class SpeedItemUI extends View {
		public var tfTitle:Label;
		public var tfDes:Label;
		public var btnSpeed:Button;
		public var btnUse:Button;
		public var btnContinue:Button;
		public var itemContainer:Sprite;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("homeScenceView/SpeedItem");

		}

	}
}