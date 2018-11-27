/**Created by the LayaAirIDE,do not modify.*/
package MornUI.tigerMachine {
	import laya.ui.*;
	import laya.display.*; 
	

	public class TigerRankViewUI extends View {
		public var creward:Label;
		public var btn_close:Button;
		public var list:List;
		public var btn_right:Button;
		public var btn_left:Button;
		public var pageTxt:Label;
		public var yourRankTxt:Label;
		public var yourPointTxt:Label;
		public var btn_get:Button;
		public var txt1:Label;
		public var txt2:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("tigerMachine/TigerRankView");

		}

	}
}