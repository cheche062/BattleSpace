/**Created by the LayaAirIDE,do not modify.*/
package MornUI.congratulation {
	import laya.ui.*;
	import laya.display.*; 
	

	public class congratulationViewUI extends View {
		public var dom_box:HBox;
		public var btn_close:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("congratulation/congratulationView");

		}

	}
}