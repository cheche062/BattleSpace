/**Created by the LayaAirIDE,do not modify.*/
package MornUI.homeScenceView {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.homeScenceView.SpeedItemUI;
	import laya.display.Text;

	public class SpeedViewUI extends View {
		public var btnClose:Button;
		public var bar:Image;
		public var tfTime:Label;
		public var tfName:Label;
		public var itemTime:SpeedItemUI;
		public var item_0:SpeedItemUI;
		public var item_2:SpeedItemUI;
		public var item_1:SpeedItemUI;
		public var item_3:SpeedItemUI;
		public var tfLv:Label;

		override protected function createChildren():void {
			View.regComponent("MornUI.homeScenceView.SpeedItemUI",SpeedItemUI);
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("homeScenceView/SpeedView");

		}

	}
}