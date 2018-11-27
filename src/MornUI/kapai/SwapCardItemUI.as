/**Created by the LayaAirIDE,do not modify.*/
package MornUI.kapai {
	import laya.ui.*;
	import laya.display.*; 
	

	public class SwapCardItemUI extends View {
		public var dom_box:Box;
		public var dom_text:Label;
		public var dom_btn:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("kapai/SwapCardItem");

		}

	}
}