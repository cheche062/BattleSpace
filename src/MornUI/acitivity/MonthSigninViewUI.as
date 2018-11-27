/**Created by the LayaAirIDE,do not modify.*/
package MornUI.acitivity {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.acitivity.MonthSigninItemUI;

	public class MonthSigninViewUI extends View {
		public var dom_leiji:Label;
		public var dom_lx1:Label;
		public var dom_award0:Sprite;
		public var dom_lx2:Label;
		public var dom_award1:Sprite;
		public var dom_ok0:Image;
		public var dom_ok1:Image;
		public var dom_list:List;

		override protected function createChildren():void {
			View.regComponent("MornUI.acitivity.MonthSigninItemUI",MonthSigninItemUI);
			super.createChildren();
			loadUI("acitivity/MonthSigninView");

		}

	}
}