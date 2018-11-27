/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightingChapter {
	import laya.ui.*;
	import laya.display.*; 
	

	public class FightJifenjiangliViewUI extends View {
		public var closeBtn:Button;
		public var tileLbl:Label;
		public var starBox:Box;
		public var starNum:Label;
		public var rBox:Box;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightingChapter/FightJifenjiangliView");

		}

	}
}