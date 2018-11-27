/**Created by the LayaAirIDE,do not modify.*/
package MornUI.kapai {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.kapai.CardUI;

	public class CardShowViewUI extends View {
		public var dom_box:Box;
		public var btn_confirm:Button;

		override protected function createChildren():void {
			View.regComponent("MornUI.kapai.CardUI",CardUI);
			super.createChildren();
			loadUI("kapai/CardShowView");

		}

	}
}