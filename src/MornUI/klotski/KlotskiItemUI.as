/**Created by the LayaAirIDE,do not modify.*/
package MornUI.klotski {
	import laya.ui.*;
	import laya.display.*; 
	

	public class KlotskiItemUI extends View {
		public var bm:Image;
		public var bmSelected:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("klotski/KlotskiItem");

		}

	}
}