/**Created by the LayaAirIDE,do not modify.*/
package MornUI.chatNew {
	import laya.ui.*;
	import laya.display.*; 
	

	public class FaceBookFriendItemUI extends View {
		public var dom_name:Label;
		public var dom_level:Label;
		public var dom_guild:Label;
		public var btn_add:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("chatNew/FaceBookFriendItem");

		}

	}
}