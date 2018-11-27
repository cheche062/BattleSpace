/**Created by the LayaAirIDE,do not modify.*/
package MornUI.bagua {
	import laya.ui.*;
	import laya.display.*; 
	

	public class baguaLightUI extends View {
		public var dom_clip:Clip;
		public var dom_people:Image;
		public var dom_num:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("bagua/baguaLight");

		}

	}
}