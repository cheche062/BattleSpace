/**Created by the LayaAirIDE,do not modify.*/
package MornUI.mainView {
	import laya.ui.*;
	import laya.display.*; 
	

	public class ActCombinationBoxUI extends View {
		public var firstChargeBtn:Button;
		public var dayActBtn:Button;
		public var timeCountLabel:Label;
		public var norActBtn:Button;
		public var actTips:Image;
		public var welfareBtn:Button;
		public var welfareTips:Image;
		public var arrBtn:Button;
		public var arrTips:Image;
		public var storyBtn:Button;
		public var timeCountLabel1:Label;
		public var storyRed:Image;
		public var WBBtn:Button;
		public var worldboss:Label;
		public var threeGiftBtn:Button;
		public var tgLabel:Label;
		public var discountBtn:Button;
		public var discountCountLabel:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("mainView/ActCombinationBox");

		}

	}
}