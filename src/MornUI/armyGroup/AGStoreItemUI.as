/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class AGStoreItemUI extends View {
		public var imgIcon:Image;
		public var buyBtn:Button;
		public var dom_icon:Image;
		public var priceTxt:Text;
		public var imgTip:Image;
		public var lb_1:Label;
		public var lb_2:Label;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("armyGroup/AGStoreItem");

		}

	}
}