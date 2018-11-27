/**Created by the LayaAirIDE,do not modify.*/
package MornUI.worldBoss {
	import laya.ui.*;
	import laya.display.*; 
	

	public class WorldBossRankItem2UI extends View {
		public var icon:Image;
		public var tfNum:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("worldBoss/WorldBossRankItem2");

		}

	}
}