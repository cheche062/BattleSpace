/**Created by the LayaAirIDE,do not modify.*/
package MornUI.pata {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.pata.itemDataUI;

	public class itemLevelUI extends View {
		public var dom_bg:Image;
		public var dom_icon:Image;
		public var dom_ok:Image;
		public var dom_vbox:VBox;

		override protected function createChildren():void {
			View.regComponent("MornUI.pata.itemDataUI",itemDataUI);
			super.createChildren();
			loadUI("pata/itemLevel");

		}

	}
}