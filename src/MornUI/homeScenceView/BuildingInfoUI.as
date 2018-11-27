/**Created by the LayaAirIDE,do not modify.*/
package MornUI.homeScenceView {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;
	import MornUI.homeScenceView.upComUI;

	public class BuildingInfoUI extends View {
		public var closeBtn:Button;
		public var nameTF:Text;
		public var icon:Image;
		public var infoTF:Text;
		public var upBox:upComUI;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			View.regComponent("MornUI.homeScenceView.upComUI",upComUI);
			super.createChildren();
			loadUI("homeScenceView/BuildingInfo");

		}

	}
}