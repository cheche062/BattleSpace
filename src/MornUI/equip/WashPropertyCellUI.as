/**Created by the LayaAirIDE,do not modify.*/
package MornUI.equip {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class WashPropertyCellUI extends View {
		public var LockBtn:Button;
		public var PropertyImage:Image;
		public var PropertyTextg:Text;
		public var NowPropertyBat:ProgressBar;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("equip/WashPropertyCell");

		}

	}
}