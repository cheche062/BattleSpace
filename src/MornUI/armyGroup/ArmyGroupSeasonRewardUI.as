/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ArmyGroupSeasonRewardUI extends View {
		public var rankInfoList:List;
		public var myNameTxt:Text;
		public var myScoreTxt:Text;
		public var myRankTxt:Text;
		public var claimReward:Button;
		public var closeBtn:Button;
		public var myIcon:Image;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("armyGroup/ArmyGroupSeasonReward");

		}

	}
}