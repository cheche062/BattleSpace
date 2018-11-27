/**Created by the LayaAirIDE,do not modify.*/
package MornUI.startrek {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class StarTrekFinalViewUI extends View {
		public var closeBtn:Button;
		public var confirmBtn:Button;
		public var disTxt:Text;
		public var rewardBox:Box;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("startrek/StarTrekFinalView");

		}

	}
}