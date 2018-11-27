/**Created by the LayaAirIDE,do not modify.*/
package MornUI.equip {
	import laya.ui.*;
	import laya.display.*; 
	

	public class WashBagViewUI extends View {
		public var HeroBtn:Button;
		public var SoldierBtn:Button;
		public var SoldierList:List;
		public var HeroPanel:Panel;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("equip/WashBagView");

		}

	}
}