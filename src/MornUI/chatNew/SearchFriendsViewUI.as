/**Created by the LayaAirIDE,do not modify.*/
package MornUI.chatNew {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.chatNew.ApplyFriendItemUI;
	import MornUI.chatNew.SearchFriendsItemUI;
	import MornUI.chatNew.FaceBookFriendItemUI;

	public class SearchFriendsViewUI extends View {
		public var btn_close:Button;
		public var dom_tab:Tab;
		public var dom_viewstack:ViewStack;
		public var dom_applyList:List;
		public var dom_searchList:List;
		public var dom_input:TextInput;
		public var btn_search:Button;
		public var btn_change:Button;
		public var btn_facebook:Button;
		public var dom_facebookList:List;
		public var dom_tips:Label;
		public var btn_sq:Button;

		override protected function createChildren():void {
			View.regComponent("MornUI.chatNew.ApplyFriendItemUI",ApplyFriendItemUI);
			View.regComponent("MornUI.chatNew.SearchFriendsItemUI",SearchFriendsItemUI);
			View.regComponent("MornUI.chatNew.FaceBookFriendItemUI",FaceBookFriendItemUI);
			super.createChildren();
			loadUI("chatNew/SearchFriendsView");

		}

	}
}