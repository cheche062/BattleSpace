/**Created by the LayaAirIDE,do not modify.*/
package MornUI.relic {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class TransportDotCellUI extends View {
		public var DotImage:Image;
		public var TimeCell:Image;
		public var TimeText:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("relic/TransportDotCell");

		}

	}
}