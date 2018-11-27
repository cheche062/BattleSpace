/**Created by the LayaAirIDE,do not modify.*/
package MornUI.componets {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.html.dom.HTMLDivElement;

	public class XAlertUI extends View {
		public var yesBtn:Button;
		public var noBtn:Button;
		public var msgTF:HTMLDivElement;
		public var closeBtn:Button;

		override protected function createChildren():void {
			View.regComponent("HTMLDivElement",HTMLDivElement);
			super.createChildren();
			loadUI("componets/XAlert");

		}

	}
}