/**Created by the LayaAirIDE,do not modify.*/
package MornUI.equip {
	import laya.ui.*;
	import laya.display.*; 
	

	public class ResolveBagViewUI extends View {
		public var BagItemList:List;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("equip/ResolveBagView");

		}

	}
}