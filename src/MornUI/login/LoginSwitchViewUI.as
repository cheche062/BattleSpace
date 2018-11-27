/**Created by the LayaAirIDE,do not modify.*/
package MornUI.login {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class LoginSwitchViewUI extends View {
		public var CloseBtn:Button;
		public var TitleText:Text;
		public var FaceBookBtn:Button;
		public var MutantBoxBtn:Button;
		public var GoogleBtn:Button;
		public var GuestBtn:Button;
		public var CheckBoxBtn:CheckBox;
		public var GouImage:Image;
		public var TipsText:Text;
		public var LastLoginText:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("login/LoginSwitchView");

		}

	}
}