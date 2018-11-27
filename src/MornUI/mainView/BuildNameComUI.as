/**Created by the LayaAirIDE,do not modify.*/
package MornUI.mainView {
	import laya.ui.*;
	import laya.display.*; 
	

	public class BuildNameComUI extends View {
		public var nameTF:Label;
		public var lvTF:Label;
		public var aniSprit:Sprite;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("mainView/BuildNameCom");

		}

	}
}