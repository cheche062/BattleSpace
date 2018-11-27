/**Created by the LayaAirIDE,do not modify.*/
package MornUI.bossFight {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;
	import MornUI.bossFight.BossFightTipsViewUI;

	public class DemonBandatViewUI extends View {
		public var CloseBtn:Button;
		public var TipInfoBtn:Button;
		public var RankBtn:Button;
		public var ItemText:Text;
		public var RewardBtn:Button;
		public var RankingText:Text;
		public var FightBtn:Button;
		public var RewardText:Text;
		public var TitleText:Text;
		public var ProgressText:Text;
		public var TimeText:Text;
		public var TitleProgressText:Text;
		public var RewardText0:Text;
		public var FightImage:Image;
		public var DeployLimtText:Text;
		public var DropText:Text;
		public var RewardTipsBtn:Button;
		public var AddFightTimeBtn:Button;
		public var DropList:List;
		public var RewardList:List;
		public var typeIcon:Image;
		public var tiaojianLbl:Label;
		public var BossFightTips:BossFightTipsViewUI;
		public var DeployLimtTips:Box;
		public var DeployLimtITipsText:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			View.regComponent("MornUI.bossFight.BossFightTipsViewUI",BossFightTipsViewUI);
			super.createChildren();
			loadUI("bossFight/DemonBandatView");

		}

	}
}