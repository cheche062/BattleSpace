/**Created by the LayaAirIDE,do not modify.*/
package MornUI.worldBoss {
	import laya.ui.*;
	import laya.display.*; 
	

	public class BuffItemUI extends View {
		public var dom_icon:Image;
		public var dom_add:Label;
		public var dom_price:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("worldBoss/BuffItem");

		}

	}
}