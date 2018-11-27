/**Created by the LayaAirIDE,do not modify.*/
package MornUI.mineFight {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class MineFightViewUI extends View {
		public var fourTF:Text;
		public var oneTF:Text;
		public var fiveTF:Text;
		public var twoTF:Text;
		public var threeTF:Text;
		public var closeBtn:Button;
		public var fourBtn:Button;
		public var fiveBtn:Button;
		public var oneBtn:Button;
		public var twoBtn:Button;
		public var threeBtn:Button;
		public var bhBtn:Button;
		public var headContainer:Box;
		public var mineCloseArea:Box;
		public var restTimeTF:Text;
		public var battleLogBtn:Button;
		public var btn_rt_log:Image;
		public var mineShopBtn:Button;
		public var btn_ascending:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("mineFight/MineFightView");

		}

	}
}