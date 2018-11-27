/**Created by the LayaAirIDE,do not modify.*/
package MornUI.camp {
	import laya.ui.*;
	import laya.display.*; 
	

	public class UnitRenderItem2UI extends View {
		public var _bg:Image;
		public var _text:Label;
		public var lock:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("camp/UnitRenderItem2");

		}

	}
}