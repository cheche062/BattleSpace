/**Created by the LayaAirIDE,do not modify.*/
package MornUI.startrek {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class StarTrekBuffViewUI extends View {
		public var buff0:Button;
		public var buff1:Button;
		public var buffDes0:Text;
		public var buffDes1:Text;
		public var img0:Box;
		public var img1:Box;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("startrek/StarTrekBuffView");

		}

	}
}