/**Created by the LayaAirIDE,do not modify.*/
package MornUI.bingBook {
	import laya.ui.*;
	import laya.display.*; 
	

	public class SweepViewUI extends View {
		public var list:List;
		public var btn_close:Button;
		public var remain:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("bingBook/SweepView");

		}

	}
}