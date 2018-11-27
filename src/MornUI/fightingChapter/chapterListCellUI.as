/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightingChapter {
	import laya.ui.*;
	import laya.display.*; 
	

	public class chapterListCellUI extends View {
		public var starImg:Image;
		public var lbl:Label;
		public var rBox:Box;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightingChapter/chapterListCell");

		}

	}
}