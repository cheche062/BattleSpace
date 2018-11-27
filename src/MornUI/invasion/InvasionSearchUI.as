/**Created by the LayaAirIDE,do not modify.*/
package MornUI.invasion {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class InvasionSearchUI extends View {
		public var cancelBtn:Button;
		public var tipTF:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("invasion/InvasionSearch");

		}

	}
}