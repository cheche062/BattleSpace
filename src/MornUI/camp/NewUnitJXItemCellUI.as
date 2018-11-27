/**Created by the LayaAirIDE,do not modify.*/
package MornUI.camp {
	import laya.ui.*;
	import laya.display.*; 
	

	public class NewUnitJXItemCellUI extends View {
		public var itemFace:Image;
		public var upBtn:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("camp/NewUnitJXItemCell");

		}

	}
}