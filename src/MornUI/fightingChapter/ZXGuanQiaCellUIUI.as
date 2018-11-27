/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightingChapter {
	import laya.ui.*;
	import laya.display.*; 
	

	public class ZXGuanQiaCellUIUI extends View {
		public var Img1:Image;
		public var Img2:Image;
		public var cName:Label;
		public var Img4:Image;
		public var Img3:Box;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightingChapter/ZXGuanQiaCellUI");

		}

	}
}