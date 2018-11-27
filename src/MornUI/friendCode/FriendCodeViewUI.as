/**Created by the LayaAirIDE,do not modify.*/
package MornUI.friendCode {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class FriendCodeViewUI extends View {
		public var codeArea:Box;
		public var enterCodeBtn:Button;
		public var shareBtn:Button;
		public var myCode:Text;
		public var inputArea:Box;
		public var myCodeBtn:Button;
		public var confirmBtn:Button;
		public var enterTips:Text;
		public var codeInput:TextInput;
		public var rewardList:List;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("friendCode/FriendCodeView");

		}

	}
}