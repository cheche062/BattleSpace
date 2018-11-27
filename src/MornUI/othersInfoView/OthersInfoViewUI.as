/**Created by the LayaAirIDE,do not modify.*/
package MornUI.othersInfoView {
	import laya.ui.*;
	import laya.display.*; 
	

	public class OthersInfoViewUI extends View {
		public var dom_bg:Label;
		public var dom_box:Box;
		public var dom_name:Label;
		public var dom_power:Label;
		public var dom_level:Label;
		public var dom_guild:Label;
		public var dom_heros:HBox;
		public var dom_soldiers:HBox;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("othersInfoView/OthersInfoView");

		}

	}
}