/**Created by the LayaAirIDE,do not modify.*/
package MornUI.chargeView {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ReItemUI extends View {
		public var dom_box:Box;
		public var btn_type1:Button;
		public var priceText:Text;
		public var dom_bottom_box:Box;
		public var AddNumText:Text;
		public var ItemNumText:Text;
		public var IconImage:Image;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("chargeView/ReItem");

		}

	}
}