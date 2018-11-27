/**Created by the LayaAirIDE,do not modify.*/
package MornUI.relic {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;
	import MornUI.relic.TransportDotCellUI;
	import MornUI.relic.TransportCellUI;
	import MornUI.relic.CarrierMapCellUI;

	public class PlunderMainViewUI extends View {
		public var CloseBtn:Button;
		public var TitleText:Text;
		public var NumText:Text;
		public var Line1:Image;
		public var Line0:Image;
		public var Line11:Image;
		public var Line10:Image;
		public var Line9:Image;
		public var Line8:Image;
		public var Line7:Image;
		public var Line6:Image;
		public var Line5:Image;
		public var Line4:Image;
		public var Line3:Image;
		public var Line2:Image;
		public var DotCell0:TransportDotCellUI;
		public var Transport0:TransportCellUI;
		public var DotCell1:TransportDotCellUI;
		public var Transport1:TransportCellUI;
		public var DotCell2:TransportDotCellUI;
		public var Transport2:TransportCellUI;
		public var DotCell3:TransportDotCellUI;
		public var Transport3:TransportCellUI;
		public var DotCell4:TransportDotCellUI;
		public var Transport4:TransportCellUI;
		public var DotCell5:TransportDotCellUI;
		public var Transport5:TransportCellUI;
		public var DotCell6:TransportDotCellUI;
		public var Transport6:TransportCellUI;
		public var DotCell7:TransportDotCellUI;
		public var Transport7:TransportCellUI;
		public var DotCell8:TransportDotCellUI;
		public var Transport8:TransportCellUI;
		public var DotCell9:TransportDotCellUI;
		public var Transport9:TransportCellUI;
		public var DotCell10:TransportDotCellUI;
		public var Transport10:TransportCellUI;
		public var DotCell11:TransportDotCellUI;
		public var Transport11:TransportCellUI;
		public var Carrier_0:CarrierMapCellUI;
		public var Carrier_7:CarrierMapCellUI;
		public var Carrier_2:CarrierMapCellUI;
		public var Carrier_1:CarrierMapCellUI;
		public var Carrier_6:CarrierMapCellUI;
		public var Carrier_4:CarrierMapCellUI;
		public var Carrier_11:CarrierMapCellUI;
		public var Carrier_3:CarrierMapCellUI;
		public var Carrier_5:CarrierMapCellUI;
		public var Carrier_10:CarrierMapCellUI;
		public var Carrier_9:CarrierMapCellUI;
		public var Carrier_8:CarrierMapCellUI;
		public var BattleBtn:Button;
		public var RefreshBtn:Button;
		public var AddBtn:Button;
		public var TrainBtn:Button;
		public var PlunderBtn:Button;
		public var LogBtn:Button;
		public var LogDotImage:Image;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			View.regComponent("MornUI.relic.TransportDotCellUI",TransportDotCellUI);
			View.regComponent("MornUI.relic.TransportCellUI",TransportCellUI);
			View.regComponent("MornUI.relic.CarrierMapCellUI",CarrierMapCellUI);
			super.createChildren();
			loadUI("relic/PlunderMainView");

		}

	}
}