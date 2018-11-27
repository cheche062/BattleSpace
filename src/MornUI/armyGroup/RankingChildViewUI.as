/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class RankingChildViewUI extends View {
		public var dom_viewstack:ViewStack;
		public var todayAndYestdayTitle:Text;
		public var tdOwnRank:Text;
		public var tdOwnName:Text;
		public var tdOwnGroup:Text;
		public var tdOwnKill:Text;
		public var dom_today_box:HBox;
		public var yestdayRankingNum:Text;
		public var yestdayKillsNum:Text;
		public var claimBtn:Button;
		public var rewardTitle:Text;
		public var infoBtn1:Button;
		public var dom_yestoday_box:HBox;
		public var dom_rank:Text;
		public var dom_kill:Text;
		public var btn_get_total:Button;
		public var btn_info_total:Button;
		public var dom_total_box:HBox;
		public var tabCtrl:Tab;
		public var listTitleBox:Box;
		public var dom_list:List;
		public var redDot:Image;
		public var redDot2:Image;
		public var dom_lr:Box;
		public var dom_pageText:Text;
		public var pagePrevBtn:Button;
		public var pageNextBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("armyGroup/RankingChildView");

		}

	}
}