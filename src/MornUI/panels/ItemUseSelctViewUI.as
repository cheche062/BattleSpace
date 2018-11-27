/**Created by the LayaAirIDE,do not modify.*/
package MornUI.panels {
	import laya.ui.*;
	import laya.display.*; 
	

	public class ItemUseSelctViewUI extends View {
		public var rBox:Box;
		public var getBtn:Button;
		public var closeBtn:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("panels/ItemUseSelctView");

		}

	}
}