/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class AGBuyProtectUI extends View {
		public var closeBtn:Button;
		public var itemBuyBtn:Button;
		public var leftTimeTxt:Text;
		public var dom_icon:Image;
		public var dom_num:Label;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("armyGroup/AGBuyProtect");

		}

	}
}