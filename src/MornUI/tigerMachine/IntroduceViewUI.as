/**Created by the LayaAirIDE,do not modify.*/
package MornUI.tigerMachine {
	import laya.ui.*;
	import laya.display.*; 
	

	public class IntroduceViewUI extends View {
		public var x1:Label;
		public var x2:Label;
		public var x3:Label;
		public var x4:Label;
		public var btn_close:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("tigerMachine/IntroduceView");

		}

	}
}