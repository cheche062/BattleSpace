/**Created by the LayaAirIDE,do not modify.*/
package MornUI.homeScenceView {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;
	import MornUI.homeScenceView.ProgressBarUI;
	import laya.html.dom.HTMLDivElement;
	import MornUI.homeScenceView.upComUI;

	public class BuildingUpgrade_B14UI extends View {
		public var closeBtn:Button;
		public var icon:Image;
		public var nameTF:Text;
		public var bar_0:ProgressBarUI;
		public var bar_1:ProgressBarUI;
		public var lb_0:Text;
		public var lb_1:Text;
		public var vTF_0:HTMLDivElement;
		public var vTF_1:HTMLDivElement;
		public var bar_2:ProgressBarUI;
		public var lb_2:Text;
		public var vTF_2:HTMLDivElement;
		public var infoTF:Text;
		public var upBox:upComUI;
		public var tipBox:Box;
		public var tipTF:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			View.regComponent("MornUI.homeScenceView.ProgressBarUI",ProgressBarUI);
			View.regComponent("HTMLDivElement",HTMLDivElement);
			View.regComponent("MornUI.homeScenceView.upComUI",upComUI);
			super.createChildren();
			loadUI("homeScenceView/BuildingUpgrade_B14");

		}

	}
}