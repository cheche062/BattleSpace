/**Created by the LayaAirIDE,do not modify.*/
package MornUI.equip {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ResolveInfoViewUI extends View {
		public var ResolveItemCellList:List;
		public var RewardList:List;
		public var DecompositionBtn:Button;
		public var AutoDecompBtn:Button;
		public var ResolveTipsText:Text;
		public var ResolveRewardText:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("equip/ResolveInfoView");

		}

	}
}