/**Created by the LayaAirIDE,do not modify.*/
package MornUI.grassShip {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.grassShip.rankItemUI;

	public class rankViewUI extends View {
		public var btn_close:Button;
		public var dom_title:Label;
		public var dom_list:List;
		public var btn_right:Button;
		public var btn_left:Button;
		public var dom_page:Label;
		public var dom_myRank:Label;
		public var dom_tips:Label;

		override protected function createChildren():void {
			View.regComponent("MornUI.grassShip.rankItemUI",rankItemUI);
			super.createChildren();
			loadUI("grassShip/rankView");

		}

	}
}