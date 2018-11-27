/**Created by the LayaAirIDE,do not modify.*/
package MornUI.bossFight {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class RankRewardInfoCellUI extends View {
		public var RankText:Text;
		public var rewardBox:Box;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("bossFight/RankRewardInfoCell");

		}

	}
}