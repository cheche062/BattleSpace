/**Created by the LayaAirIDE,do not modify.*/
package MornUI.homeScenceView {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;
	import MornUI.homeScenceView.upComUI;

	public class BuildingUpgrade_B11UI extends View {
		public var closeBtn:Button;
		public var icon:Image;
		public var nameTF:Text;
		public var infoTF:Text;
		public var upBox:upComUI;
		public var tipBox:Box;
		public var tipTF:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			View.regComponent("MornUI.homeScenceView.upComUI",upComUI);
			super.createChildren();
			loadUI("homeScenceView/BuildingUpgrade_B11");

		}

	}
}