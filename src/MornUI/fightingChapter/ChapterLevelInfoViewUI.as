/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightingChapter {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.fightingChapter.chapterListCellUI;

	public class ChapterLevelInfoViewUI extends View {
		public var chapterNameLabel:Label;
		public var starBg:Image;
		public var addBtn:Button;
		public var numLbl:Label;
		public var ackBtn:Button;
		public var sweepBtn:Button;
		public var closeBtn:Button;
		public var list1:List;
		public var rItem1:chapterListCellUI;
		public var sweepBtn2:Button;
		public var needBox1:Box;
		public var needBox2:Box;

		override protected function createChildren():void {
			View.regComponent("MornUI.fightingChapter.chapterListCellUI",chapterListCellUI);
			super.createChildren();
			loadUI("fightingChapter/ChapterLevelInfoView");

		}

	}
}