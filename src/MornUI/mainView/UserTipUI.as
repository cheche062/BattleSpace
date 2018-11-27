/**Created by the LayaAirIDE,do not modify.*/
package MornUI.mainView {
	import laya.ui.*;
	import laya.display.*; 
	

	public class UserTipUI extends View {
		public var lvLb:Label;
		public var expTF:Label;
		public var lvTF:Label;
		public var nameTF:Label;
		public var uidTF:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("mainView/UserTip");

		}

	}
}