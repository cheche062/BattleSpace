/**Created by the LayaAirIDE,do not modify.*/
package MornUI.mainView {
	import laya.ui.*;
	import laya.display.*; 
	

	public class BRViewUI extends View {
		public var btnClose:Button;
		public var lb_0:Label;
		public var lb_1:Label;
		public var lb_2:Label;
		public var lb_3:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("mainView/BRView");

		}

	}
}