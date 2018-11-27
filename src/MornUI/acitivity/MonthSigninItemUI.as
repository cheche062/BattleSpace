/**Created by the LayaAirIDE,do not modify.*/
package MornUI.acitivity {
	import laya.ui.*;
	import laya.display.*; 
	

	public class MonthSigninItemUI extends View {
		public var dom_bg:Image;
		public var dom_icon:Box;
		public var dom_isget:Clip;
		public var dom_day_num:Label;
		public var dom_select:Image;
		public var dom_vip:Image;
		public var dom_vip_text:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("acitivity/MonthSigninItem");

		}

	}
}