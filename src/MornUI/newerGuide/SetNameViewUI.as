/**Created by the LayaAirIDE,do not modify.*/
package MornUI.newerGuide {
	import laya.ui.*;
	import laya.display.*; 
	

	public class SetNameViewUI extends View {
		public var inputTxt:TextInput;
		public var errTxt:Label;
		public var confirmBtn:Button;
		public var closeBtn:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("newerGuide/SetNameView");

		}

	}
}