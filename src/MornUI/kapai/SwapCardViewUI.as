/**Created by the LayaAirIDE,do not modify.*/
package MornUI.kapai {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.kapai.CardItemUI;

	public class SwapCardViewUI extends View {
		public var dom_list:List;
		public var dom_compound:Button;
		public var dom_resolve:Button;
		public var dom_points:Label;

		override protected function createChildren():void {
			View.regComponent("MornUI.kapai.CardItemUI",CardItemUI);
			super.createChildren();
			loadUI("kapai/SwapCardView");

		}

	}
}