/**Created by the LayaAirIDE,do not modify.*/
package MornUI.pvpFight {
	import laya.ui.*;
	import laya.display.*; 
	
	import game.module.pvp.views.ui.UnitRankRewardItem;

	public class pvpRankCellUI extends View {
		public var bgImg:Image;
		public var rankLbl:Label;
		public var scoreLbl:Label;
		public var levelBg:Image;
		public var levelLbl:Label;
		public var roleNameT:Label;
		public var rewardList:List;

		override protected function createChildren():void {
			View.regComponent("game.module.pvp.views.ui.UnitRankRewardItem",UnitRankRewardItem);
			super.createChildren();
			loadUI("pvpFight/pvpRankCell");

		}

	}
}