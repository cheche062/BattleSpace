/**Created by the LayaAirIDE,do not modify.*/
package MornUI.componets {
	import laya.ui.*;
	import laya.display.*; 
	

	public class ItemIconUI extends View {
		public var itemBG:Image;
		public var icon:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("componets/ItemIcon");

		}

	}
}