/**Created by the LayaAirIDE,do not modify.*/
package MornUI.threeGift {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ThreeGiftViewUI extends View {
		public var closeBtn:Button;
		public var helpBtn:Button;
		public var reward_2:Button;
		public var reward_1:Button;
		public var reward_0:Button;
		public var remain_0:Text;
		public var remain_1:Text;
		public var remain_2:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("threeGift/ThreeGiftView");

		}

	}
}