/**Created by the LayaAirIDE,do not modify.*/
package MornUI.invasion {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class InvasionResultUI extends View {
		public var closeBtn:Button;
		public var confirmBtn:Button;
		public var tipTF:Text;
		public var itemList:List;
		public var cupTF_0:Text;
		public var cupTF_1:Text;
		public var arrowUp:Image;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("invasion/InvasionResult");

		}

	}
}