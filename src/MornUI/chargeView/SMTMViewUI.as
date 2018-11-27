/**Created by the LayaAirIDE,do not modify.*/
package MornUI.chargeView {
	import laya.ui.*;
	import laya.display.*; 
	

	public class SMTMViewUI extends View {
		public var bg_right:Image;
		public var bg_left:Image;
		public var tabBtn_1:Button;
		public var tabBtn_0:Button;
		public var viewContainer:Box;
		public var closeBtn:Button;
		public var vRed:Image;
		public var tabBtn_2:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("chargeView/SMTMView");

		}

	}
}