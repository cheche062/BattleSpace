/**Created by the LayaAirIDE,do not modify.*/
package MornUI.login {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ServerNoticeViewUI extends View {
		public var TitleText:Text;
		public var InfoText:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("login/ServerNoticeView");

		}

	}
}