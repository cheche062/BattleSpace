/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightingChapter {
	import laya.ui.*;
	import laya.display.*; 
	

	public class SaoDangRewardCellUI extends View {
		public var tileLbl:Label;
		public var rBox:Box;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightingChapter/SaoDangRewardCell");

		}

	}
}