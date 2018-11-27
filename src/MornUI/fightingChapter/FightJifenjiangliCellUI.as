/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightingChapter {
	import laya.ui.*;
	import laya.display.*; 
	

	public class FightJifenjiangliCellUI extends View {
		public var starBox:Box;
		public var starNum:Label;
		public var rBox:Box;
		public var rBtn:Button;
		public var rLbl:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightingChapter/FightJifenjiangliCell");

		}

	}
}