/**Created by the LayaAirIDE,do not modify.*/
package MornUI.startrek {
	import laya.ui.*;
	import laya.display.*; 
	

	public class StarTrekBoxUI extends View {
		public var state0:Box;
		public var state1:Box;
		public var state2:Box;
		public var state3:Box;
		public var state4:Box;
		public var state5:Box;
		public var state6:Box;
		public var state7:Box;
		public var state8:Box;
		public var state9:Box;
		public var comIcon:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("startrek/StarTrekBox");

		}

	}
}