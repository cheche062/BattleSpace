/**Created by the LayaAirIDE,do not modify.*/
package MornUI.homeScenceView {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;
	import MornUI.homeScenceView.upComUI;
	import MornUI.homeScenceView.ProgressBarUI;
	import laya.html.dom.HTMLDivElement;

	public class BuildingUpgrade_B12UI extends View {
		public var closeBtn:Button;
		public var nameTF:Text;
		public var infoTF:Text;
		public var upBox:upComUI;
		public var tipBox:Box;
		public var tipTF:Text;
		public var icon:Image;
		public var bar_0:ProgressBarUI;
		public var lb_0:Text;
		public var vTF_0:HTMLDivElement;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			View.regComponent("MornUI.homeScenceView.upComUI",upComUI);
			View.regComponent("MornUI.homeScenceView.ProgressBarUI",ProgressBarUI);
			View.regComponent("HTMLDivElement",HTMLDivElement);
			super.createChildren();
			loadUI("homeScenceView/BuildingUpgrade_B12");

		}

	}
}