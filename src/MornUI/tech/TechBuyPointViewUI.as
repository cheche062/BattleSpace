/**Created by the LayaAirIDE,do not modify.*/
package MornUI.tech {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class TechBuyPointViewUI extends View {
		public var closeBtn:Button;
		public var confirmBtn:Button;
		public var num1TF:Text;
		public var num2TF:Text;
		public var plusBtn:Button;
		public var minBtn:Button;
		public var buyNumTF:Text;
		public var maxBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("tech/TechBuyPointView");

		}

	}
}