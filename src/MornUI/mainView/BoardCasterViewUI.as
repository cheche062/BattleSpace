/**Created by the LayaAirIDE,do not modify.*/
package MornUI.mainView {
	import laya.ui.*;
	import laya.display.*; 
	

	public class BoardCasterViewUI extends View {
		public var imgBg:Image;
		public var infoTxt:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("mainView/BoardCasterView");

		}

	}
}