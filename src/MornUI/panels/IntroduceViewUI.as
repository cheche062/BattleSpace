/**Created by the LayaAirIDE,do not modify.*/
package MornUI.panels {
	import laya.ui.*;
	import laya.display.*; 
	

	public class IntroduceViewUI extends View {
		public var p1:Panel;
		public var htmlDiv:Label;
		public var closeBtn:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("panels/IntroduceView");

		}

	}
}