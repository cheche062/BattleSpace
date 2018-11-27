/**Created by the LayaAirIDE,do not modify.*/
package MornUI.friend {
	import laya.ui.*;
	import laya.display.*; 
	

	public class ChatInfoViewUI extends View {
		public var SendBtn:Button;
		public var TextInPutText:TextInput;
		public var ChatList:List;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("friend/ChatInfoView");

		}

	}
}