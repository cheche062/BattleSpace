/**Created by the LayaAirIDE,do not modify.*/
package MornUI.chargeView {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class MobilChargeViewUI extends View {
		public var chargeList:List;
		public var vipBar:ProgressBar;
		public var nowVip:Text;
		public var nextInfo:Box;
		public var nextVIP:Text;
		public var needTxt:Text;
		public var chargeInfoTxt:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("chargeView/MobilChargeView");

		}

	}
}