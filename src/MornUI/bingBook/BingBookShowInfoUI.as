/**Created by the LayaAirIDE,do not modify.*/
package MornUI.bingBook {
	import laya.ui.*;
	import laya.display.*; 
	

	public class BingBookShowInfoUI extends View {
		public var closeBtn:Button;
		public var rBox:Box;
		public var fBtn:Button;
		public var tile1:Label;
		public var tile2:Box;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("bingBook/BingBookShowInfo");

		}

	}
}