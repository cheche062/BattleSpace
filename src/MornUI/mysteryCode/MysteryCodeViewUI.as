/**Created by the LayaAirIDE,do not modify.*/
package MornUI.mysteryCode {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class MysteryCodeViewUI extends View {
		public var inputTxt:TextInput;
		public var exchangeBtn:Button;
		public var closeBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("mysteryCode/MysteryCodeView");

		}

	}
}