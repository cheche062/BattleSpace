/**Created by the LayaAirIDE,do not modify.*/
package MornUI.worldBoss {
	import laya.ui.*;
	import laya.display.*; 
	

	public class WorldBossEnterUI extends View {
		public var dom_text:Label;
		public var btn_close:Button;
		public var btn_confirm:Button;
		public var dom_time:Label;
		public var btn_rank:Button;
		public var btn_mission:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("worldBoss/WorldBossEnter");

		}

	}
}