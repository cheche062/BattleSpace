/**Created by the LayaAirIDE,do not modify.*/
package MornUI.grassShip {
	import laya.ui.*;
	import laya.display.*; 
	

	public class grassShipViewUI extends View {
		public var dom_remain:Label;
		public var dom_VBox_stage:VBox;
		public var dom_all:Image;
		public var dom_pointer:Image;
		public var dom_day_total:Label;
		public var btn_attempts:Button;
		public var btn_add:Button;
		public var dom_able:Box;
		public var dom_times:Label;
		public var dom_buy:Image;
		public var dom_buy_num:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("grassShip/grassShipView");

		}

	}
}