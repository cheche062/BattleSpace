/**Created by the LayaAirIDE,do not modify.*/
package MornUI.arena {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ArenaFreeWinUI extends View {
		public var confirmBtn:Button;
		public var newLv:Text;
		public var upLv:Text;
		public var arrowImg:Image;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("arena/ArenaFreeWin");

		}

	}
}