/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightingChapter {
	import laya.ui.*;
	import laya.display.*; 
	

	public class fightingChapetrMenuUI extends View {
		public var errLbl:Label;
		public var rewardBtn:Button;
		public var faceImg:Image;
		public var rNumBox:Image;
		public var rNumLbl:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightingChapter/fightingChapetrMenu");

		}

	}
}