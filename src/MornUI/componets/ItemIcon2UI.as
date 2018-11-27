/**Created by the LayaAirIDE,do not modify.*/
package MornUI.componets {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ItemIcon2UI extends View {
		public var bg:Image;
		public var icon:Image;
		public var qPic:Image;
		public var numTF:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("componets/ItemIcon2");

		}

	}
}