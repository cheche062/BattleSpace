/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	

	public class StoreItemUI extends View {
		public var dom_icon:Image;
		public var dom_iconNum:Label;
		public var dom_name:Label;
		public var dom_num:Label;
		public var btn_confirm:Button;
		public var dom_needIcon:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("guild/StoreItem");

		}

	}
}