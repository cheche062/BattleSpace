/**Created by the LayaAirIDE,do not modify.*/
package MornUI.panels {
	import laya.ui.*;
	import laya.display.*; 
	

	public class GmPanelUI extends View {
		public var gmInput:TextInput;
		public var closeBtn:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("panels/GmPanel");

		}

	}
}