/**Created by the LayaAirIDE,do not modify.*/
package MornUI.friendCode {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class FriendCodeItemUI extends View {
		public var infoTxt:Text;
		public var reStateTxt:Text;
		public var claimBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("friendCode/FriendCodeItem");

		}

	}
}