/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightingChapter {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class FightingOtherUIUI extends View {
		public var geneBtn:Image;
		public var equipfBtn:Image;
		public var bossBtn:Button;
		public var BossTimeText:Text;
		public var BossLevelText:Text;
		public var starTrekBtn:Image;
		public var btn_pata:Image;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("fightingChapter/FightingOtherUI");

		}

	}
}