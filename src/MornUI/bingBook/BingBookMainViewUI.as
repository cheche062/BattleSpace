/**Created by the LayaAirIDE,do not modify.*/
package MornUI.bingBook {
	import laya.ui.*;
	import laya.display.*; 
	

	public class BingBookMainViewUI extends View {
		public var lBox2:Box;
		public var rdBox:Box;
		public var backBtn:Button;
		public var closeBtn:Button;
		public var fBtn:Button;
		public var freeLbl1:Label;
		public var wNeedBox1:Box;
		public var wNumLbl1:Label;
		public var freeLbl2:Label;
		public var wNeedBox2:Box;
		public var wNumLbl2:Label;
		public var lBox:Box;
		public var feiji:Image;
		public var rBtn:Button;
		public var btn_openSweep:Button;
		public var sweepNum:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("bingBook/BingBookMainView");

		}

	}
}