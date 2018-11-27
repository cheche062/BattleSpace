/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup {
	import laya.ui.*;
	import laya.display.*; 
	

	public class ArmyGroupChatViewUI extends View {
		public var dom_blue_bg:Image;
		public var closeBtn:Button;
		public var chatContainer:Panel;
		public var sendBtn:Button;
		public var inputTF:TextInput;
		public var tabCtrl:Tab;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("armyGroup/ArmyGroupChatView");

		}

	}
}