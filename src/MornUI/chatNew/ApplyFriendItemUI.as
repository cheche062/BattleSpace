/**Created by the LayaAirIDE,do not modify.*/
package MornUI.chatNew {
	import laya.ui.*;
	import laya.display.*; 
	

	public class ApplyFriendItemUI extends View {
		public var dom_name:Label;
		public var dom_level:Label;
		public var dom_guild:Label;
		public var dom_yes:Button;
		public var dom_no:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("chatNew/ApplyFriendItem");

		}

	}
}