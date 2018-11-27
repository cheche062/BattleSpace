/**Created by the LayaAirIDE,do not modify.*/
package MornUI.advance {
	import laya.ui.*;
	import laya.display.*; 
	

	public class AdvanceItemNewUI extends View {
		public var dom_viewStack:ViewStack;
		public var dom_current:Sprite;
		public var dom_level_left:Label;
		public var dom_add_left:Label;
		public var dom_icon_left:Image;
		public var dom_next:Sprite;
		public var dom_level_right:Label;
		public var dom_add_right:Label;
		public var dom_icon_right:Image;
		public var dom_max:Label;
		public var dom_icon_lock:Image;
		public var dom_msg:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("advance/AdvanceItemNew");

		}

	}
}