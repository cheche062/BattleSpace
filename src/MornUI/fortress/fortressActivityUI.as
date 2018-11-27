/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fortress {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.fortress.iconItemUI;

	public class fortressActivityUI extends View {
		public var dom_current:Label;
		public var dom_level:Label;
		public var btn_challenge:Button;
		public var btn_add:Button;
		public var dom_attempts:Label;
		public var dom_all:Image;
		public var dom_pointer:Image;
		public var dom_HBox:HBox;
		public var dom_remain:Label;

		override protected function createChildren():void {
			View.regComponent("MornUI.fortress.iconItemUI",iconItemUI);
			super.createChildren();
			loadUI("fortress/fortressActivity");

		}

	}
}