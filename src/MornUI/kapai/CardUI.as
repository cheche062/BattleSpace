/**Created by the LayaAirIDE,do not modify.*/
package MornUI.kapai {
	import laya.ui.*;
	import laya.display.*; 
	

	public class CardUI extends View {
		public var dom_img:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("kapai/Card");

		}

	}
}