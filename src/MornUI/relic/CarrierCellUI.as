/**Created by the LayaAirIDE,do not modify.*/
package MornUI.relic {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class CarrierCellUI extends View {
		public var SelectBtn:Button;
		public var ProtectImage:Image;
		public var PopulationImage:Image;
		public var TimeImage:Image;
		public var CarrierNameText:Text;
		public var ProtectText:Text;
		public var PopulationText:Text;
		public var TimeText:Text;
		public var CarrierImage:Image;
		public var ItemImage:Image;
		public var SelectedText:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("relic/CarrierCell");

		}

	}
}