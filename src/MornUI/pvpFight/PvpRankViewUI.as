/**Created by the LayaAirIDE,do not modify.*/
package MornUI.pvpFight {
	import laya.ui.*;
	import laya.display.*; 
	
	import game.module.pvp.views.ui.UnitRankRewardItem;

	public class PvpRankViewUI extends View {
		public var rankList:List;
		public var closeBtn:Button;
		public var leftBtn:Button;
		public var rightBtn:Button;
		public var pageLbl:Label;
		public var claimBtn:Button;
		public var myRankTxt:Label;
		public var myScoreTxt:Label;
		public var rewardList:List;

		override protected function createChildren():void {
			View.regComponent("game.module.pvp.views.ui.UnitRankRewardItem",UnitRankRewardItem);
			super.createChildren();
			loadUI("pvpFight/PvpRankView");

		}

	}
}