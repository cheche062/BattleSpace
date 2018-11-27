/**Created by the LayaAirIDE,do not modify.*/
package MornUI.relic {
	import laya.ui.*;
	import laya.display.*; 
	

	public class TransportCellUI extends View {
		public var TransportImage:Image;
		public var ItemImage:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("relic/TransportCell");

		}

	}
}