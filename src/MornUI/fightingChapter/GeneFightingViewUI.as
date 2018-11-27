/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightingChapter {
	import laya.ui.*;
	import laya.display.*; 
	

	public class GeneFightingViewUI extends View {
		public var panelBox:Box;
		public var closeBtn:Button;
		public var fName:Label;
		public var ackBtn:Button;
		public var bbox:Box;
		public var wNumLbl:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightingChapter/GeneFightingView");

		}

	}
}