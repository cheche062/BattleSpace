/**Created by the LayaAirIDE,do not modify.*/
package MornUI.startrek {
	import laya.ui.*;
	import laya.display.*; 
	

	public class StarTrekBagViewUI extends View {
		public var mainBg:Image;
		public var itemList:List;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("startrek/StarTrekBagView");

		}

	}
}