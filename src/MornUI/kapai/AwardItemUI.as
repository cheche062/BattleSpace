/**Created by the LayaAirIDE,do not modify.*/
package MornUI.kapai {
	import laya.ui.*;
	import laya.display.*; 
	

	public class AwardItemUI extends View {
		public var dom_btn:Button;
		public var dom_dot:Image;
		public var dom_box:Box;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("kapai/AwardItem");

		}

	}
}