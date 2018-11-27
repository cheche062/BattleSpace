/**Created by the LayaAirIDE,do not modify.*/
package MornUI.acitivity {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class GiftPackViewUI extends View {
		public var activityBg:Image;
		public var buyBtn:Button;
		public var prevBtn:Button;
		public var nextBtn:Button;
		public var oldPrice:Text;
		public var nowPrice:Text;
		public var timeTF:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("acitivity/GiftPackView");

		}

	}
}