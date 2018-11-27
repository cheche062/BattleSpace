/**Created by the LayaAirIDE,do not modify.*/
package MornUI.mainView {
	import laya.ui.*;
	import laya.display.*; 
	

	public class HarvestComUI extends View {
		public var bgBtn:Button;
		public var icon:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("mainView/HarvestCom");

		}

	}
}