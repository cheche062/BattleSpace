/**Created by the LayaAirIDE,do not modify.*/
package MornUI.mainView {
	import laya.ui.*;
	import laya.display.*; 
	

	public class GuestMenuUI extends View {
		public var rightDownBox:Box;
		public var backBtn:Button;
		public var leftUpBox:Box;
		public var expIcon:Button;
		public var nameTF:Label;
		public var lvTF:Label;
		public var expBar:ProgressBar;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("mainView/GuestMenu");

		}

	}
}