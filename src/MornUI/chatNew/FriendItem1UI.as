/**Created by the LayaAirIDE,do not modify.*/
package MornUI.chatNew {
	import laya.ui.*;
	import laya.display.*; 
	

	public class FriendItem1UI extends View {
		public var dom_bg:Image;
		public var dom_talk:Button;
		public var dom_cancel:Button;
		public var dom_online:Clip;
		public var dom_name:Label;
		public var dom_red:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("chatNew/FriendItem1");

		}

	}
}