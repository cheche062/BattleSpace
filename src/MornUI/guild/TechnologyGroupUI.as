/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	

	public class TechnologyGroupUI extends View {
		public var btn_open:Button;
		public var gName:Label;
		public var gBox:Box;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("guild/TechnologyGroup");

		}

	}
}