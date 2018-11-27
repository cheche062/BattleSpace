/**Created by the LayaAirIDE,do not modify.*/
package MornUI.pvpFight {
	import laya.ui.*;
	import laya.display.*; 
	
	import game.module.pvp.views.ui.PvpRewardCell1;

	public class PvpRewardViewUI extends View {
		public var closeBtn:Button;
		public var itemList:List;

		override protected function createChildren():void {
			View.regComponent("game.module.pvp.views.ui.PvpRewardCell1",PvpRewardCell1);
			super.createChildren();
			loadUI("pvpFight/PvpRewardView");

		}

	}
}