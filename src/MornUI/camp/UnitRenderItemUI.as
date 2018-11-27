/**Created by the LayaAirIDE,do not modify.*/
package MornUI.camp {
	import laya.ui.*;
	import laya.display.*; 
	

	public class UnitRenderItemUI extends View {
		public var icon:Image;
		public var desTF:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("camp/UnitRenderItem");

		}

	}
}