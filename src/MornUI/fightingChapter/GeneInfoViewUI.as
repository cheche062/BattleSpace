/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightingChapter {
	import laya.ui.*;
	import laya.display.*; 
	

	public class GeneInfoViewUI extends View {
		public var listBox:Box;
		public var FreeBtn:Button;
		public var genReward:Box;
		public var genReq:Box;
		public var rBtn:Button;
		public var rNumBox:Image;
		public var rNumLbl:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightingChapter/GeneInfoView");

		}

	}
}