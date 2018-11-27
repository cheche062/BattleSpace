/**Created by the LayaAirIDE,do not modify.*/
package MornUI.LvFundation {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class LvFunItemUI extends View {
		public var recieveTips:Text;
		public var clarmBtn:Button;
		public var lvTxt:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("LvFundation/LvFunItem");

		}

	}
}