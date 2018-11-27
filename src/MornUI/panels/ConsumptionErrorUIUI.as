/**Created by the LayaAirIDE,do not modify.*/
package MornUI.panels {
	import laya.ui.*;
	import laya.display.*; 
	

	public class ConsumptionErrorUIUI extends View {
		public var closeBtn:Button;
		public var cBox:Box;
		public var sBtn:Button;
		public var wnum:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("panels/ConsumptionErrorUI");

		}

	}
}