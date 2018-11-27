/**Created by the LayaAirIDE,do not modify.*/
package MornUI.mainView {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ProtectComUI extends View {
		public var timeTF:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("mainView/ProtectCom");

		}

	}
}