/**Created by the LayaAirIDE,do not modify.*/
package MornUI.friend {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class FriendRequestCellUI extends View {
		public var NameText:Text;
		public var AgreeBtn:Button;
		public var RefuseBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("friend/FriendRequestCell");

		}

	}
}