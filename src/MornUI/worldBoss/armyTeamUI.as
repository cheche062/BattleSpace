/**Created by the LayaAirIDE,do not modify.*/
package MornUI.worldBoss {
	import laya.ui.*;
	import laya.display.*; 
	

	public class armyTeamUI extends View {
		public var dom_bg:Clip;
		public var dom_viewStack:ViewStack;
		public var dom_head:Image;
		public var dom_blood:ProgressBar;
		public var dom_action:ProgressBar;
		public var dom_diebox:Box;
		public var dom_time:Label;
		public var dom_auto:Image;
		public var btn_close:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("worldBoss/armyTeam");

		}

	}
}