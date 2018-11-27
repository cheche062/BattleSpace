/**Created by the LayaAirIDE,do not modify.*/
package MornUI.kapai {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.kapai.RankItemUI;

	public class RankCardViewUI extends View {
		public var dom_list:List;
		public var btn_left:Button;
		public var btn_right:Button;
		public var dom_page:Label;
		public var btn_collect:Button;
		public var dom_pts:Label;
		public var dom_isRanking:Image;
		public var dom_score:Label;

		override protected function createChildren():void {
			View.regComponent("MornUI.kapai.RankItemUI",RankItemUI);
			super.createChildren();
			loadUI("kapai/RankCardView");

		}

	}
}