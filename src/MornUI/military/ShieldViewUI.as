/**Created by the LayaAirIDE,do not modify.*/
package MornUI.military {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ShieldViewUI extends View {
		public var closeBtn:Button;
		public var titleTF:Text;
		public var list:List;
		public var infoBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("military/ShieldView");

		}

	}
}