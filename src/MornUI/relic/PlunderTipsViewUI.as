/**Created by the LayaAirIDE,do not modify.*/
package MornUI.relic {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class PlunderTipsViewUI extends View {
		public var BgImage:Image;
		public var BtnBox:Box;
		public var PlunderBtn:Button;
		public var DetailBtn:Button;
		public var PlayerBox:Box;
		public var GetRewardText:Text;
		public var PlayerTimeText:Text;
		public var RewardTimeText:Text;
		public var RewardList:List;
		public var PlunderBox:Box;
		public var RewardText:Text;
		public var RemainTimeText:Text;
		public var TimeText:Text;
		public var LostRewardList:List;
		public var CloseBtn:Button;
		public var CompteleBtn:Button;
		public var oldInfo:Box;
		public var MyVechlieText:Text;
		public var LevelText:Text;
		public var NameText:Text;
		public var VehicleImage:Image;
		public var FightingImage:Image;
		public var FightingIconImage:Image;
		public var FightingText:Label;
		public var vipInfo:Box;
		public var vipTips:Text;
		public var vipRewardList:List;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("relic/PlunderTipsView");

		}

	}
}