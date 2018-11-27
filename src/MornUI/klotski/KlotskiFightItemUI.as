/**Created by the LayaAirIDE,do not modify.*/
package MornUI.klotski {
	import laya.ui.*;
	import laya.display.*; 
	

	public class KlotskiFightItemUI extends View {
		public var bgUnit:Image;
		public var picUnit:Image;
		public var btnRest:Button;
		public var btnSwitch:Button;
		public var spItem:Sprite;
		public var bmReward:Image;
		public var bmUnit:Image;
		public var bmRight:Image;
		public var bmLeft:Image;
		public var btnOpen:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("klotski/KlotskiFightItem");

		}

	}
}