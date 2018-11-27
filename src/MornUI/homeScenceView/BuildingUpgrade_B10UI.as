/**Created by the LayaAirIDE,do not modify.*/
package MornUI.homeScenceView {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;
	import MornUI.homeScenceView.upComUI;
	import MornUI.camp.CampSoldierItemUI;

	public class BuildingUpgrade_B10UI extends View {
		public var closeBtn:Button;
		public var icon:Image;
		public var nameTF:Text;
		public var upBox:upComUI;
		public var infoTF:Text;
		public var tipBox:Box;
		public var tipTF:Text;
		public var item_0:CampSoldierItemUI;
		public var newLabel:Text;
		public var item_1:CampSoldierItemUI;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			View.regComponent("MornUI.homeScenceView.upComUI",upComUI);
			View.regComponent("MornUI.camp.CampSoldierItemUI",CampSoldierItemUI);
			super.createChildren();
			loadUI("homeScenceView/BuildingUpgrade_B10");

		}

	}
}