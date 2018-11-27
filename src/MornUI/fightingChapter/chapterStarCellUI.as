/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightingChapter {
	import laya.ui.*;
	import laya.display.*; 
	

	public class chapterStarCellUI extends View {
		public var starImg:Image;
		public var decLbl:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightingChapter/chapterStarCell");

		}

	}
}