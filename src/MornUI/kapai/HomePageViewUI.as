/**Created by the LayaAirIDE,do not modify.*/
package MornUI.kapai {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.kapai.AwardItemUI;
	import MornUI.kapai.SwapCardItemUI;

	public class HomePageViewUI extends View {
		public var dom_tabList:List;
		public var dom_contentList:List;
		public var btn_exchange:Button;
		public var dom_remain:Label;
		public var dom_time:Label;
		public var dom_points:Label;
		public var dom_reward:Box;

		override protected function createChildren():void {
			View.regComponent("MornUI.kapai.AwardItemUI",AwardItemUI);
			View.regComponent("MornUI.kapai.SwapCardItemUI",SwapCardItemUI);
			super.createChildren();
			loadUI("kapai/HomePageView");

		}

	}
}