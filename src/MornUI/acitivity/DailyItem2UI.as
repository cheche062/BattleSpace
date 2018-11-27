/**Created by the LayaAirIDE,do not modify.*/
package MornUI.acitivity {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class DailyItem2UI extends View {
		public var dom_selected:Image;
		public var dom_day:Text;
		public var dom_icon:Image;
		public var dom_num:Label;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("acitivity/DailyItem2");

		}

	}
}