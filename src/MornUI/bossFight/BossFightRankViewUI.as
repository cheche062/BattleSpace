/**Created by the LayaAirIDE,do not modify.*/
package MornUI.bossFight {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;
	import MornUI.bossFight.RankInfoCellUI;

	public class BossFightRankViewUI extends View {
		public var CloseBtn:Button;
		public var TipInfoBtn:Button;
		public var LocalBtn:Button;
		public var GroupBtn:Button;
		public var TitleText:Text;
		public var MyRankImage:Image;
		public var RewardBox:Box;
		public var RewardList:List;
		public var LocalRankText:Text;
		public var RewardText:Text;
		public var RankBox:Box;
		public var TurnsText:Text;
		public var RankingText:Text;
		public var NameText:Text;
		public var LevelText:Text;
		public var ProgerssText:Text;
		public var RankList:List;
		public var myRank:RankInfoCellUI;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			View.regComponent("MornUI.bossFight.RankInfoCellUI",RankInfoCellUI);
			super.createChildren();
			loadUI("bossFight/BossFightRankView");

		}

	}
}