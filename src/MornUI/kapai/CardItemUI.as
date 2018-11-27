/**Created by the LayaAirIDE,do not modify.*/
package MornUI.kapai {
	import laya.ui.*;
	import laya.display.*; 
	

	public class CardItemUI extends View {
		public var dom_light:Image;
		public var dom_box:Box;
		public var dom_text:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("kapai/CardItem");

		}

	}
}