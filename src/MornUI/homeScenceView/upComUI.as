/**Created by the LayaAirIDE,do not modify.*/
package MornUI.homeScenceView {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class upComUI extends View {
		public var upgradeBtn:Button;
		public var box_0:Box;
		public var icon_0:Image;
		public var valueTF_0:Text;
		public var box_1:Box;
		public var icon_1:Image;
		public var valueTF_1:Text;
		public var expBox:Box;
		public var expIcon:Image;
		public var expTF:Text;
		public var timeBox:Box;
		public var icon_2:Image;
		public var valueTF_2:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("homeScenceView/upCom");

		}

	}
}