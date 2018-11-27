/**Created by the LayaAirIDE,do not modify.*/
package MornUI.buildHelp {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;
	import laya.html.dom.HTMLDivElement;

	public class BuildHelpItemUI extends View {
		public var pNameTxt:Text;
		public var goHelpBtn:Button;
		public var buildInfo:HTMLDivElement;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			View.regComponent("HTMLDivElement",HTMLDivElement);
			super.createChildren();
			loadUI("buildHelp/BuildHelpItem");

		}

	}
}