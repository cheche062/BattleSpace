/**Created by the LayaAirIDE,do not modify.*/
package MornUI.relic {
	import laya.ui.*;
	import laya.display.*; 
	

	public class EscortSelectViewUI extends View {
		public var CloseBtn:Button;
		public var SelectList:List;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("relic/EscortSelectView");

		}

	}
}