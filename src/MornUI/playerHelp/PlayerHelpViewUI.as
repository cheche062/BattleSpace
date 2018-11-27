/**Created by the LayaAirIDE,do not modify.*/
package MornUI.playerHelp {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.playerHelp.bigIdItemUI;
	import MornUI.playerHelp.smallIdItemUI;

	public class PlayerHelpViewUI extends View {
		public var btn_close:Button;
		public var dom_nav:Panel;
		public var dom_vbox:VBox;
		public var dom_viewstack:ViewStack;
		public var btn_get:Button;
		public var dom_water:HBox;

		override protected function createChildren():void {
			View.regComponent("MornUI.playerHelp.bigIdItemUI",bigIdItemUI);
			View.regComponent("MornUI.playerHelp.smallIdItemUI",smallIdItemUI);
			super.createChildren();
			loadUI("playerHelp/PlayerHelpView");

		}

	}
}