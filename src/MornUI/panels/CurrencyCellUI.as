/**Created by the LayaAirIDE,do not modify.*/
package MornUI.panels {
	import laya.ui.*;
	import laya.display.*; 
	

	public class CurrencyCellUI extends View {
		public var itemIMG:Image;
		public var itemNUM:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("panels/CurrencyCell");

		}

	}
}