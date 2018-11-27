/**Created by the LayaAirIDE,do not modify.*/
package MornUI.homeScenceView {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;
	import MornUI.homeScenceView.upComUI;
	import MornUI.homeScenceView.BuildProInfoUI;

	public class BuildingUpgrade_2UI extends View {
		public var closeBtn:Button;
		public var icon:Image;
		public var nameTF:Text;
		public var upBox:upComUI;
		public var infoTF:Text;
		public var tipBox:Box;
		public var tipTF:Text;
		public var dataInfo:BuildProInfoUI;
		public var skillTF:Text;
		public var defenceAreaTF:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			View.regComponent("MornUI.homeScenceView.upComUI",upComUI);
			View.regComponent("MornUI.homeScenceView.BuildProInfoUI",BuildProInfoUI);
			super.createChildren();
			loadUI("homeScenceView/BuildingUpgrade_2");

		}

	}
}