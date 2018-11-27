/**Created by the LayaAirIDE,do not modify.*/
package MornUI.newPaTa {
	import laya.ui.*;
	import laya.display.*; 
	

	public class PataPreViewUI extends View {
		public var btn_close:Button;
		public var pos:Label;
		public var btn_enter:Button;
		public var br:Label;
		public var guide1:Sprite;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("newPaTa/PataPreView");

		}

	}
}