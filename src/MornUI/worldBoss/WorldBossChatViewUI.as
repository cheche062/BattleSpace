/**Created by the LayaAirIDE,do not modify.*/
package MornUI.worldBoss {
	import laya.ui.*;
	import laya.display.*; 
	

	public class WorldBossChatViewUI extends View {
		public var closeBtn:Button;
		public var dom_redot:Image;
		public var chatContainer:Panel;
		public var sendBtn:Button;
		public var inputTF:TextInput;
		public var tabCtrl:Tab;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("worldBoss/WorldBossChatView");

		}

	}
}