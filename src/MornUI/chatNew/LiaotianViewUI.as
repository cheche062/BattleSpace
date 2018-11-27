/**Created by the LayaAirIDE,do not modify.*/
package MornUI.chatNew {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.chatNew.tabItem1UI;
	import MornUI.chatNew.FriendItem1UI;

	public class LiaotianViewUI extends View {
		public var closeBtn:Button;
		public var dom_jiantou:Button;
		public var dom_redot:Image;
		public var dom_tabList:List;
		public var dom_viewStack:ViewStack;
		public var chatContainer:Panel;
		public var dom_friends_list:List;
		public var dom_title_box:Box;
		public var dom_viewStack_back:ViewStack;
		public var btn_back:Button;
		public var btn_apply:Button;
		public var dom_applyRed:Image;
		public var dom_applyNum:Label;
		public var sendBtn:Button;
		public var inputTF:TextInput;
		public var dom_laba:Clip;

		override protected function createChildren():void {
			View.regComponent("MornUI.chatNew.tabItem1UI",tabItem1UI);
			View.regComponent("MornUI.chatNew.FriendItem1UI",FriendItem1UI);
			super.createChildren();
			loadUI("chatNew/LiaotianView");

		}

	}
}