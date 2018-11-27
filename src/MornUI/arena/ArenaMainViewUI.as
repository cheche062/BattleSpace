/**Created by the LayaAirIDE,do not modify.*/
package MornUI.arena {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ArenaMainViewUI extends View {
		public var arenaBg:Image;
		public var leftTopArea:Box;
		public var ruleBtn:Button;
		public var remainTF:Text;
		public var titleArea:Box;
		public var curRankTF:Text;
		public var myState:Image;
		public var LeftBottomArea:Box;
		public var rewardBtn:Button;
		public var shopBtn:Button;
		public var RightBottomArea:Box;
		public var reportTabBtn:Button;
		public var rankTabBtn:Button;
		public var rankLabel:Text;
		public var reportLabel:Text;
		public var challangeArea:Box;
		public var refreshBtn:Button;
		public var refreshTF:Text;
		public var chaTimesTF:Text;
		public var resetBtn:Button;
		public var fightScoreTF:Text;
		public var delopyBtn:Button;
		public var pTips:Image;
		public var rightTopArea:Box;
		public var closeBtn:Button;
		public var foodTF:Text;
		public var waterTF:Text;
		public var closeArea:Box;
		public var nextStateTF:Text;
		public var openTimeTF:Text;
		public var stateImg:Image;
		public var nowImg:Image;
		public var nextImg:Image;
		public var dayRewardArea:Box;
		public var noGiftNotice:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("arena/ArenaMainView");

		}

	}
}