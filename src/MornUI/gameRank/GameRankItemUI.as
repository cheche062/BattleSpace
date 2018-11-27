/**Created by the LayaAirIDE,do not modify.*/
package MornUI.gameRank {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class GameRankItemUI extends View {
		public var itemBg:Image;
		public var rankTxt:Text;
		public var nameTxt:Text;
		public var detailTxt:Text;
		public var bpTxt:Text;
		public var starImg:Image;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("gameRank/GameRankItem");

		}

	}
}