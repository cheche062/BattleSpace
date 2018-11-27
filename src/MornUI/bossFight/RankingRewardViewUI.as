/**Created by the LayaAirIDE,do not modify.*/
package MornUI.bossFight {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class RankingRewardViewUI extends View {
		public var CloseBtn:Button;
		public var TipsInfoBtn:Button;
		public var TilteText:Text;
		public var TitleText0:Text;
		public var TitleText2:Text;
		public var RankList:List;
		public var TitleText1:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("bossFight/RankingRewardView");

		}

	}
}