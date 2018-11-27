/**Created by the LayaAirIDE,do not modify.*/
package MornUI.mainView {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class unlockComUI extends View {
		public var bgLocked:Image;
		public var bgUnlock:Image;
		public var unlockLabel:Text;
		public var icon:Image;
		public var priceTF:Text;
		public var lockLabel:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("mainView/unlockCom");

		}

	}
}