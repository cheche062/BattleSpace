/**Created by the LayaAirIDE,do not modify.*/
package MornUI.relic {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class TrainLogCellUI extends View {
		public var LogBtn:Button;
		public var LogBuchImage:Image;
		public var LevelText:Text;
		public var PlayerNameText:Text;
		public var LogBuchText:Text;
		public var NullText:Text;
		public var ItemList:List;
		public var BattleInfoBox:Box;
		public var AttackLost:Text:Text;
		public var AttackLostList:List;
		public var ReplayBtn:Button;
		public var shareBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("relic/TrainLogCell");

		}

	}
}