/**Created by the LayaAirIDE,do not modify.*/
package MornUI.worldBoss {
	import laya.ui.*;
	import laya.display.*; 
	

	public class WorldBossMissionUI extends View {
		public var closeBtn:Button;
		public var missionList:List;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("worldBoss/WorldBossMission");

		}

	}
}