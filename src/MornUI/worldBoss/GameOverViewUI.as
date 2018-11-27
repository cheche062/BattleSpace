/**Created by the LayaAirIDE,do not modify.*/
package MornUI.worldBoss {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.worldBoss.GameoverItemUI;

	public class GameOverViewUI extends View {
		public var dom_bg:Image;
		public var dom_title:Image;
		public var dom_kill:Label;
		public var btn_close:Button;
		public var dom_list:List;

		override protected function createChildren():void {
			View.regComponent("MornUI.worldBoss.GameoverItemUI",GameoverItemUI);
			super.createChildren();
			loadUI("worldBoss/GameOverView");

		}

	}
}