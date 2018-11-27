/**Created by the LayaAirIDE,do not modify.*/
package MornUI.arena {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ArenaReportViewUI extends View {
		public var attTab:Button;
		public var defTab:Button;
		public var reportList:List;
		public var fightScoreTF:Text;
		public var closeBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("arena/ArenaReportView");

		}

	}
}