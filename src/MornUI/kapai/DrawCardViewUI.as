/**Created by the LayaAirIDE,do not modify.*/
package MornUI.kapai {
	import laya.ui.*;
	import laya.display.*; 
	

	public class DrawCardViewUI extends View {
		public var dom_score:Label;
		public var dom_green:Image;
		public var dom_blue:Image;
		public var dom_purple:Image;
		public var btn_one:Button;
		public var btn_ten:Button;
		public var dom_ten_old:Label;
		public var dom_ten_new:Label;
		public var dom_light:Image;
		public var dom_viewStack:ViewStack;
		public var dom_attempts:Label;
		public var dom_one_cost:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("kapai/DrawCardView");

		}

	}
}