/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class MilitaryRankViewUI extends View {
		public var closeBtn:Button;
		public var rankTitle:Text;
		public var searchBtn:Button;
		public var rankPr:ProgressBar;
		public var rankNum:Text;
		public var missionList:List;
		public var rewardTitle:Text;
		public var claimBtn:Button;
		public var jxLog:Image;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("armyGroup/MilitaryRankView");

		}

	}
}