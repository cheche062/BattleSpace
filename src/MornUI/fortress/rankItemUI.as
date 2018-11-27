/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fortress {
	import laya.ui.*;
	import laya.display.*; 
	

	public class rankItemUI extends View {
		public var dom_HBox:HBox;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fortress/rankItem");

		}

	}
}