/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightingChapter {
	import laya.ui.*;
	import laya.display.*; 
	

	public class ShaoDangViewUI extends View {
		public var closeBtn:Button;
		public var rBox:Box;
		public var btn1:Button;
		public var btn2:Button;
		public var xhLbl1:Label;
		public var xhLbl2:Label;
		public var addBtn:Button;
		public var numLbl:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightingChapter/ShaoDangView");

		}

	}
}