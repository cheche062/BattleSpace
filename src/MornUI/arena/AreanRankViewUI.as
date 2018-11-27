/**Created by the LayaAirIDE,do not modify.*/
package MornUI.arena {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class AreanRankViewUI extends View {
		public var rankList:List;
		public var closeBtn:Button;
		public var myNameTF:Text;
		public var myLvTF:Text;
		public var myRkTF:Text;
		public var myPowerTF:Text;
		public var pageTF:Text;
		public var nextBtn:Button;
		public var prevBtn:Button;
		public var fightScoreTF:Text;
		public var selectImg:Image;
		public var rank_0:Button;
		public var rank_1:Button;
		public var rank_2:Button;
		public var rank_3:Button;
		public var rank_4:Button;
		public var rank_5:Button;
		public var rank_6:Button;
		public var myState:Image;
		public var myRankIcon:Button;
		public var rank_7:Button;
		public var rank_8:Button;
		public var rank_9:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("arena/AreanRankView");

		}

	}
}