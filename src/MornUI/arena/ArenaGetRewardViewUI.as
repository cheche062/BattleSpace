/**Created by the LayaAirIDE,do not modify.*/
package MornUI.arena {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ArenaGetRewardViewUI extends View {
		public var confirmBtn:Button;
		public var rewardTitle:Text;
		public var timeTips:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("arena/ArenaGetRewardView");

		}

	}
}