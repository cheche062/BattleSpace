/**Created by the LayaAirIDE,do not modify.*/
package MornUI.mineFight {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class mineLogUI extends View {
		public var closeBtn:Button;
		public var attTab:Button;
		public var defTab:Button;
		public var logList:List;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("mineFight/mineLog");

		}

	}
}