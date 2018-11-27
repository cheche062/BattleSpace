/**Created by the LayaAirIDE,do not modify.*/
package MornUI.acitivity {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;
	import MornUI.acitivity.DailyItemUI;
	import MornUI.acitivity.DailyItem2UI;

	public class DailySignInViewUI extends View {
		public var signedNumTF:Text;
		public var signBtn:Button;
		public var reCheckBtn:Button;
		public var list_daily:List;
		public var list_lianxu:List;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			View.regComponent("MornUI.acitivity.DailyItemUI",DailyItemUI);
			View.regComponent("MornUI.acitivity.DailyItem2UI",DailyItem2UI);
			super.createChildren();
			loadUI("acitivity/DailySignInView");

		}

	}
}