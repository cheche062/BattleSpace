/**Created by the LayaAirIDE,do not modify.*/
package MornUI.baseAlert {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ItemAlertViewUI extends View {
		public var closeBtn:Button;
		public var confirmBtn:Button;
		public var itemIcon:Image;
		public var numTF:Text;
		public var titleTF:Text;
		public var lbDesc:Label;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("baseAlert/ItemAlertView");

		}

	}
}