/**Created by the LayaAirIDE,do not modify.*/
package MornUI.mineFight {
	import laya.ui.*;
	import laya.display.*; 
	

	public class superMineItemUI extends View {
		public var mineBtn:Image;
		public var barImg:Image;
		public var nameTF:Label;
		public var LvTF:Label;
		public var headContainer:Box;
		public var dom_headbg:Image;
		public var outputTF:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("mineFight/superMineItem");

		}

	}
}