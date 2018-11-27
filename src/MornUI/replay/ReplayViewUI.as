/**Created by the LayaAirIDE,do not modify.*/
package MornUI.replay {
	import laya.ui.*;
	import laya.display.*; 
	

	public class ReplayViewUI extends View {
		public var bg:Image;
		public var closeBtn:Button;
		public var typeBtn_0:Button;
		public var typeBtn_1:Button;
		public var pan:Panel;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("replay/ReplayView");

		}

	}
}