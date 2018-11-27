/**Created by the LayaAirIDE,do not modify.*/
package MornUI.NewGifts {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class TimeLimitViewUI extends View {
		public var box_1:Box;
		public var imgBoxBg:Image;
		public var imgBox1:Image;
		public var lbCountdown:Label;
		public var lbDiscountText:Label;
		public var btnBuy1:Button;
		public var imgIcon_1:Image;
		public var lbCostNum_1:Text;
		public var imgLine_1:Image;
		public var imgIcon_2:Image;
		public var lbCostNum_2:Text;
		public var hbox_BoxList:HBox;
		public var btnRight:Button;
		public var btnLeft:Button;
		public var box_BoxList:Box;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("NewGifts/TimeLimitView");

		}

	}
}