/**Created by the LayaAirIDE,do not modify.*/
package MornUI.pvpFight {
	import laya.ui.*;
	import laya.display.*; 
	
	import game.module.pvp.views.ui.UnitRewardItemCell;

	public class PvpRewardCell1UI extends View {
		public var scoreTxt:Label;
		public var overLbl:Label;
		public var rBtn:Button;
		public var itemList:List;

		override protected function createChildren():void {
			View.regComponent("game.module.pvp.views.ui.UnitRewardItemCell",UnitRewardItemCell);
			super.createChildren();
			loadUI("pvpFight/PvpRewardCell1");

		}

	}
}