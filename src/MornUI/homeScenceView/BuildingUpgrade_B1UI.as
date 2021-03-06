/**Created by the LayaAirIDE,do not modify.*/
package MornUI.homeScenceView {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;
	import MornUI.homeScenceView.ProgressBarUI;
	import laya.html.dom.HTMLDivElement;
	import MornUI.homeScenceView.upComUI;

	public class BuildingUpgrade_B1UI extends View {
		public var closeBtn:Button;
		public var icon:Image;
		public var nameTF:Text;
		public var bar_0:ProgressBarUI;
		public var lb_0:Text;
		public var vTF_0:HTMLDivElement;
		public var infoTF:Text;
		public var upBox:upComUI;
		public var tipBox:Box;
		public var tipTF:Text;
		public var new_0:Image;
		public var new_1:Image;
		public var newLabel:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			View.regComponent("MornUI.homeScenceView.ProgressBarUI",ProgressBarUI);
			View.regComponent("HTMLDivElement",HTMLDivElement);
			View.regComponent("MornUI.homeScenceView.upComUI",upComUI);
			super.createChildren();
			loadUI("homeScenceView/BuildingUpgrade_B1");

		}

	}
}