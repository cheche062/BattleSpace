/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightingChapter {
	import laya.ui.*;
	import laya.display.*; 
	

	public class itemCellUIUI extends View {
		public var bg:Image;
		public var itemIcon:Image;
		public var itemNumLal:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightingChapter/itemCellUI");

		}

	}
}