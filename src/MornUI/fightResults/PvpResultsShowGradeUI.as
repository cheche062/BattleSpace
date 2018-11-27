/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightResults {
	import laya.ui.*;
	import laya.display.*; 
	

	public class PvpResultsShowGradeUI extends View {
		public var textLbl:Label;
		public var rBox:Box;
		public var closeBtn:Button;
		public var rankFace:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightResults/PvpResultsShowGrade");

		}

	}
}