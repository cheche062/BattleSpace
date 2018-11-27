/**Created by the LayaAirIDE,do not modify.*/
package MornUI.pvpFight {
	import laya.ui.*;
	import laya.display.*; 
	
	import game.module.pvp.views.ui.UnitRoleInfoContainer;
	import game.module.pvp.views.ui.BuffContainer;

	public class pvpMainMeuUI extends View {
		public var myContainer:UnitRoleInfoContainer;
		public var otherContainer:UnitRoleInfoContainer;
		public var buffContainer:BuffContainer;
		public var topLeftBox:Box;
		public var helpBtn:Button;
		public var showMoneyImg:Image;
		public var topRightBox:Box;
		public var closeBtn:Button;
		public var topBox:Box;
		public var startTimeTxt:Label;
		public var rightBottomBox:Box;
		public var rankBtn:Button;
		public var rankH:Image;
		public var logBtn:Button;
		public var leftBottomBox:Box;
		public var rewardBtn:Button;
		public var hdImg:Image;
		public var hdNum:Label;
		public var shopBtn:Button;

		override protected function createChildren():void {
			View.regComponent("game.module.pvp.views.ui.UnitRoleInfoContainer",UnitRoleInfoContainer);
			View.regComponent("game.module.pvp.views.ui.BuffContainer",BuffContainer);
			super.createChildren();
			loadUI("pvpFight/pvpMainMeu");

		}

	}
}