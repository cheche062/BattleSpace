/**Created by the LayaAirIDE,do not modify.*/
package MornUI.baseAlert {
	import laya.ui.*;
	import laya.display.*; 
	

	public class MutilBtnContainerUI extends View {
		public var bg:Image;
		public var btn_0:Button;
		public var btn_1:Button;
		public var btn_2:Button;
		public var btn_3:Button;
		public var btn_4:Button;
		public var btn_5:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("baseAlert/MutilBtnContainer");

		}

	}
}