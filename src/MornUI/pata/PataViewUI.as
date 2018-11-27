/**Created by the LayaAirIDE,do not modify.*/
package MornUI.pata {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.pata.itemLevelUI;

	public class PataViewUI extends View {
		public var dom_bg:Image;
		public var dom_top_box:Box;
		public var btn_close:Button;
		public var dom_help:Button;
		public var dom_middle_box:Box;
		public var dom_current:Label;
		public var dom_history:Label;
		public var dom_ball_collecting:Sprite;
		public var dom_go:Sprite;
		public var dom_bottom_box:Box;
		public var btn_saodang:Button;
		public var btn_reset:Button;
		public var dom_times:Label;
		public var dom_saodang_price:Label;
		public var dom_tab:Tab;
		public var dom_rewards:HBox;
		public var btn_claim:Button;

		override protected function createChildren():void {
			View.regComponent("MornUI.pata.itemLevelUI",itemLevelUI);
			super.createChildren();
			loadUI("pata/PataView");

		}

	}
}