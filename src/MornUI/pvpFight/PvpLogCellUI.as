/**Created by the LayaAirIDE,do not modify.*/
package MornUI.pvpFight {
	import laya.ui.*;
	import laya.display.*; 
	

	public class PvpLogCellUI extends View {
		public var isWinImg:Image;
		public var levelLbl:Label;
		public var nameLbl:Label;
		public var sChangeLbl:Label;
		public var rbtn:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("pvpFight/PvpLogCell");

		}

	}
}