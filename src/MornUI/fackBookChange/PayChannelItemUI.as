/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fackBookChange {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class PayChannelItemUI extends View {
		public var bgImage:Image;
		public var PayImage:Image;
		public var PayText:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("fackBookChange/PayChannelItem");

		}

	}
}