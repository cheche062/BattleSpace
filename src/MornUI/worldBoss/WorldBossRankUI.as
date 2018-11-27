/**Created by the LayaAirIDE,do not modify.*/
package MornUI.worldBoss {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.worldBoss.WorldBossRankItemUI;

	public class WorldBossRankUI extends View {
		public var btnClose:Button;
		public var tfRank:Label;
		public var tfKill:Label;
		public var btnNext:Button;
		public var btnPre:Button;
		public var item_0:WorldBossRankItemUI;
		public var item_1:WorldBossRankItemUI;
		public var item_2:WorldBossRankItemUI;
		public var item_3:WorldBossRankItemUI;
		public var item_4:WorldBossRankItemUI;
		public var item_5:WorldBossRankItemUI;
		public var tfPage:Label;
		public var tfRankTip:Label;

		override protected function createChildren():void {
			View.regComponent("MornUI.worldBoss.WorldBossRankItemUI",WorldBossRankItemUI);
			super.createChildren();
			loadUI("worldBoss/WorldBossRank");

		}

	}
}