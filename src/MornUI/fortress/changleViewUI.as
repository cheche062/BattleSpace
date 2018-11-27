/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fortress {
	import laya.ui.*;
	import laya.display.*; 
	

	public class changleViewUI extends View {
		public var btn_confirm:Button;
		public var dom_content:Label;
		public var dom_number:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fortress/changleView");

		}

	}
}