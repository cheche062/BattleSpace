/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightingChapter {
	import laya.ui.*;
	import laya.display.*; 
	

	public class GuanQiaCellUIUI extends View {
		public var img1:Image;
		public var img2:Image;
		public var faceImg:Image;
		public var img3:Image;
		public var nameLbl:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightingChapter/GuanQiaCellUI");

		}

	}
}