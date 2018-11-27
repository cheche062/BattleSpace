/**Created by the LayaAirIDE,do not modify.*/
package MornUI.relic {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class PlanRewardCellUI extends View {
		public var RewardImage:Image;
		public var RewardText:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("relic/PlanRewardCell");

		}

	}
}