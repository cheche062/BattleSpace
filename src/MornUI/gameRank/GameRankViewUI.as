/**Created by the LayaAirIDE,do not modify.*/
package MornUI.gameRank {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class GameRankViewUI extends View {
		public var closeBtn:Button;
		public var rankTypeTab:Tab;
		public var t2Txt:Text;
		public var t3Txt:Text;
		public var pList:List;
		public var myRankTxt:Text;
		public var rankChangeIcon:Image;
		public var tips:Text;
		public var btn_help:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("gameRank/GameRankView");

		}

	}
}