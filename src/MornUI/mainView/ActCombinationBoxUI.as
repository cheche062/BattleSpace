/**Created by the LayaAirIDE,do not modify.*/
package MornUI.mainView {
	import laya.ui.*;
	import laya.display.*; 
	

	public class ActCombinationBoxUI extends View {
		public var firstChargeBtn:Button;
		public var dayActBtn:Button;
		public var imgDayAct:Image;
		public var timeCountLabel:Label;
		public var dayActBtn_1:Button;
		public var imgDayAct_1:Image;
		public var timeCountLabel_1:Label;
		public var dayActBtn_2:Button;
		public var imgDayAct_2:Image;
		public var timeCountLabel_2:Label;
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