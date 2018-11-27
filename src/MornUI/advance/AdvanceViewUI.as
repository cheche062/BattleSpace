/**Created by the LayaAirIDE,do not modify.*/
package MornUI.advance {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.advance.AdvanceItemNewUI;
	import laya.display.Text;

	public class AdvanceViewUI extends View {
		public var dom_list:List;
		public var oneUpBtn:Button;
		public var autoUpBtn:Button;
		public var mPro:Box;
		public var mp_0:Text;
		public var mp_img:Image;
		public var dom_tips:Sprite;
		public var rateDesLTF:Text;
		public var rateFlagTF:Text;
		public var rateDesRTF:Text;
		public var rateBar:ProgressBar;
		public var rateTF:Text;
		public var itemNumTF:Text;
		public var addNumTF:Text;
		public var dom_light:Image;
		public var fArea:Sprite;
		public var lArea:Sprite;

		override protected function createChildren():void {
			View.regComponent("MornUI.advance.AdvanceItemNewUI",AdvanceItemNewUI);
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("advance/AdvanceView");

		}

	}
}