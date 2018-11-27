/**Created by the LayaAirIDE,do not modify.*/
package MornUI.bossFight {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class BossFightBossDropCellUI extends View {
		public var RankText:Text;
		public var LocalRewardBox:Box;
		public var RandomRewardBox:Box;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("bossFight/BossFightBossDropCell");

		}

	}
}