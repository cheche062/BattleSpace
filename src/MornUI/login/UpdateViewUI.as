/**Created by the LayaAirIDE,do not modify.*/
package MornUI.login {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class UpdateViewUI extends View {
		public var btnUpdate:Button;
		public var btnClose:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("login/UpdateView");

		}

	}
}