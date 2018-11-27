/**Created by the LayaAirIDE,do not modify.*/
package MornUI.acitivity {
	import laya.ui.*;
	import laya.display.*; 
	

	public class DailyItemUI extends View {
		public var dom_bg:Image;
		public var dom_icon:Image;
		public var dom_num:Label;
		public var dom_selected:Image;
		public var dom_log:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("acitivity/DailyItem");

		}

	}
}