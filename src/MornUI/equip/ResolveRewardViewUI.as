/**Created by the LayaAirIDE,do not modify.*/
package MornUI.equip {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ResolveRewardViewUI extends View {
		public var CloseBtn:Button;
		public var ConfirmBtn:Button;
		public var ItemList:List;
		public var TitleText:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("equip/ResolveRewardView");

		}

	}
}