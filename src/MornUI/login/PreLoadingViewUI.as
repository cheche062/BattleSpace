/**Created by the LayaAirIDE,do not modify.*/
package MornUI.login {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.login.LoginSwitchViewUI;

	public class PreLoadingViewUI extends View {
		public var switchBtn:Button;
		public var verTF:Label;
		public var infoBox:Box;
		public var idTF:TextInput;
		public var ipCox:ComboBox;
		public var mcProcess:ProgressBar;
		public var btnLogin:Button;
		public var bar:Image;
		public var SwtchLogin:LoginSwitchViewUI;

		override protected function createChildren():void {
			View.regComponent("MornUI.login.LoginSwitchViewUI",LoginSwitchViewUI);
			super.createChildren();
			loadUI("login/PreLoadingView");

		}

	}
}