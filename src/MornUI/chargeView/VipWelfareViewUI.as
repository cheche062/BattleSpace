/**Created by the LayaAirIDE,do not modify.*/
package MornUI.chargeView {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class VipWelfareViewUI extends View {
		public var bg:Image;
		public var vipBar:ProgressBar;
		public var nowVip:Text;
		public var nextInfo:Box;
		public var nextVIP:Text;
		public var needTxt:Text;
		public var chargeInfoTxt:Text;
		public var rewardArea:Box;
		public var receiveBtn:Button;
		public var tfOld:Text;
		public var tfNew:Text;
		public var checkVip:Text;
		public var nextBtn:Button;
		public var prevBtn:Button;
		public var pane:Panel;
		public var vipIntro:Label;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("chargeView/VipWelfareView");

		}

	}
}