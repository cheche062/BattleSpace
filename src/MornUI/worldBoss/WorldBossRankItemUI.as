/**Created by the LayaAirIDE,do not modify.*/
package MornUI.worldBoss {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.worldBoss.WorldBossRankItem2UI;

	public class WorldBossRankItemUI extends View {
		public var tfRank:Label;
		public var tfName:Label;
		public var tfKill:Label;
		public var rItem_0:WorldBossRankItem2UI;
		public var rItem_1:WorldBossRankItem2UI;
		public var rItem_2:WorldBossRankItem2UI;
		public var rItem_3:WorldBossRankItem2UI;
		public var dItem_0:WorldBossRankItem2UI;
		public var dItem_1:WorldBossRankItem2UI;
		public var dItem_2:WorldBossRankItem2UI;
		public var dItem_3:WorldBossRankItem2UI;

		override protected function createChildren():void {
			View.regComponent("MornUI.worldBoss.WorldBossRankItem2UI",WorldBossRankItem2UI);
			super.createChildren();
			loadUI("worldBoss/WorldBossRankItem");

		}

	}
}