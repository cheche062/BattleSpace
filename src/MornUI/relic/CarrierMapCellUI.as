/**Created by the LayaAirIDE,do not modify.*/
package MornUI.relic {
	import laya.ui.*;
	import laya.display.*; 
	

	public class CarrierMapCellUI extends View {
		public var CarrierImage:Image;
		public var CarImage:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("relic/CarrierMapCell");

		}

	}
}