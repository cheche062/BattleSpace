/**Created by the LayaAirIDE,do not modify.*/
package MornUI.friend {
	import laya.ui.*;
	import laya.display.*; 
	

	public class FriendInfoViewUI extends View {
		public var RequestList:List;
		public var FaceBookBtn:Button;
		public var TextInPutText:TextInput;
		public var SearchBtn:Button;
		public var inviteBtn:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("friend/FriendInfoView");

		}

	}
}