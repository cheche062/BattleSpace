/**Created by the LayaAirIDE,do not modify.*/
package MornUI.panels {
	import laya.ui.*;
	import laya.display.*; 
	

	public class PurchasePanelUI extends View {
		public var closeBtn:Button;
		public var sBtn:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("panels/PurchasePanel");

		}

	}
}