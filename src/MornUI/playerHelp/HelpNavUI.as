/**Created by the LayaAirIDE,do not modify.*/
package MornUI.playerHelp {
	import laya.ui.*;
	import laya.display.*; 
	

	public class HelpNavUI extends View {
		public var btn_item0:Button;
		public var btn_item1:Button;
		public var btn_item2:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("playerHelp/HelpNav");

		}

	}
}