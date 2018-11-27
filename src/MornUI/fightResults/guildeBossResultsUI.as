/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightResults {
	import laya.ui.*;
	import laya.display.*; 
	

	public class guildeBossResultsUI extends View {
		public var bgImg:Image;
		public var closeBtn:Button;
		public var BossFace:Image;
		public var klPi:Image;
		public var hpLbl:Label;
		public var hpBar:ProgressBar;
		public var bossHpLbl:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightResults/guildeBossResults");

		}

	}
}