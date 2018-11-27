/**Created by the LayaAirIDE,do not modify.*/
package MornUI.homeScenceView {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ReItemUI extends View {
		public var bgImage:Image;
		public var IconImage:Image;
		public var ItemNumText:Text;
		public var IconImage01:Image;
		public var AddNumText:Text;
		public var priceText:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("homeScenceView/ReItem");

		}

	}
}