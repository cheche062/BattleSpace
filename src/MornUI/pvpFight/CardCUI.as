/**Created by the LayaAirIDE,do not modify.*/
package MornUI.pvpFight {
	import laya.ui.*;
	import laya.display.*; 
	

	public class CardCUI extends View {
		public var img:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("pvpFight/CardC");

		}

	}
}